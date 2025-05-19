import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from "npm:@supabase/supabase-js@2";

interface TaskRecord {
  id: string;
  assigned_to: string;
  assigned_by: string;
  task_title: string;
  task_description: string;
}

interface WebHookPayload {
  type: "INSERT" | "UPDATE";
  table: string;
  record: TaskRecord;
  schema: "public";
  old_record: null | TaskRecord;
}

interface FollowUpPayload {
  type: "FOLLOW_UP";
  taskId: string;
  taskTitle: string;
  recipientUserId: string;
  followedUpByUserName: string;
}

async function sendFcmNotification(
  fcmToken: string,
  title: string,
  body: string,
  clientEmail: string,
  privateKey: string,
  projectId: string,
) {
  const accessToken = await getAccessToken({ clientEmail, privateKey });
  if (!accessToken) {
    throw new Error("Failed to obtain Google Cloud access token for FCM.");
  }

  const notificationPayload = {
    message: { token: fcmToken, notification: { title, body } },
  };
  console.log("FCM message payload:", JSON.stringify(notificationPayload, null, 2));
  console.log(`Sending FCM message to project: ${projectId}...`);

  const res = await fetch(
    `https://fcm.googleapis.com/v1/projects/${projectId}/messages:send`,
    {
      method: "POST",
      headers: { "Content-Type": "application/json", Authorization: `Bearer ${accessToken}` },
      body: JSON.stringify(notificationPayload),
    },
  );

  const responseBodyText = await res.text();
  let resData;
  try {
    resData = JSON.parse(responseBodyText);
  } catch (e) {
    console.error("FCM response was not valid JSON:", responseBodyText);
    resData = { error: "FCM response was not valid JSON", details: responseBodyText };
  }

  if (!res.ok) {
    console.error("FCM Send Error Details:", JSON.stringify(resData, null, 2));
    throw new Error(`FCM Send Error: ${res.status}`);
  }
  console.log("FCM response status:", res.status);
  console.log("FCM response data:", JSON.stringify(resData, null, 2));
  return resData;
}

async function getAccessToken({
  clientEmail,
  privateKey,
}: {
  clientEmail: string;
  privateKey: string;
}): Promise<string> {
  const iat = Math.floor(Date.now() / 1000);
  const exp = iat + 3600;
  const header = { alg: "RS256", typ: "JWT" };
  const payload = { iss: clientEmail, scope: "https://www.googleapis.com/auth/firebase.messaging", aud: "https://oauth2.googleapis.com/token", iat, exp };
  const encoder = new TextEncoder();
  const base64UrlEncode = (obj: unknown) => btoa(JSON.stringify(obj)).replace(/\+/g, "-").replace(/\//g, "_").replace(/=+$/, "");
  const encodedHeader = base64UrlEncode(header);
  const encodedPayload = base64UrlEncode(payload);
  const token = `${encodedHeader}.${encodedPayload}`;
  const pemHeader = "-----BEGIN PRIVATE KEY-----";
  const pemFooter = "-----END PRIVATE KEY-----";
  const pemContents = privateKey.replace(pemHeader, "").replace(pemFooter, "").replace(/\s/g, "");
  const binaryDer = Uint8Array.from(atob(pemContents), (c) => c.charCodeAt(0));
  const cryptoKey = await crypto.subtle.importKey("pkcs8", binaryDer.buffer, { name: "RSASSA-PKCS1-v1_5", hash: "SHA-256" }, false, ["sign"]);
  const signature = await crypto.subtle.sign("RSASSA-PKCS1-v1_5", cryptoKey, encoder.encode(token));
  const encodedSignature = btoa(String.fromCharCode(...new Uint8Array(signature))).replace(/\+/g, "-").replace(/\//g, "_").replace(/=+$/, "");
  const jwt = `${token}.${encodedSignature}`;
  const res = await fetch("https://oauth2.googleapis.com/token", { method: "POST", headers: { "Content-Type": "application/x-www-form-urlencoded" }, body: new URLSearchParams({ grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer", assertion: jwt }) });
  const json = await res.json();
  if (!res.ok) { throw new Error(`Failed to get access token: ${JSON.stringify(json)}`); }
  return json.access_token;
}

const supabaseUrl = Deno.env.get("SUPABASE_URL") ?? "https://brtomluacdyeinlngdww.supabase.co";
const supabaseAnonKey = Deno.env.get("SUPABASE_ANON_KEY") ?? "YOUR_SUPABASE_ANON_KEY_PLACEHOLDER"; // Replace with your actual key or ensure it's set in env
const supabase = createClient(supabaseUrl, supabaseAnonKey);

Deno.serve(async (req) => {
  console.log("Function invoked. Version with initial ENV VAR checks.");
  const rawClientEmail = Deno.env.get("SERVICE_ACCOUNT_CLIENT_EMAIL");
  const rawPrivateKeyFromEnv = Deno.env.get("SERVICE_ACCOUNT_PRIVATE_KEY");
  const rawProjectId = Deno.env.get("SERVICE_ACCOUNT_PROJECT_ID");

  console.log(`ENV VAR - SERVICE_ACCOUNT_CLIENT_EMAIL: "${rawClientEmail}"`);
  console.log(`ENV VAR - SERVICE_ACCOUNT_PRIVATE_KEY is ${rawPrivateKeyFromEnv ? 'SET (length: ' + rawPrivateKeyFromEnv.length + ')' : 'NOT SET or EMPTY'}`);
  console.log(`ENV VAR - SERVICE_ACCOUNT_PROJECT_ID: "${rawProjectId}"`);

  try {
    const clientEmail = rawClientEmail;
    const privateKeyFromEnv = rawPrivateKeyFromEnv;
    const projectId = rawProjectId;

    if (!clientEmail || !privateKeyFromEnv || !projectId) {
      const errorMsg = "CRITICAL: Service account environment variables (SERVICE_ACCOUNT_CLIENT_EMAIL, SERVICE_ACCOUNT_PRIVATE_KEY, SERVICE_ACCOUNT_PROJECT_ID) are not fully set or accessible in Supabase Function settings.";
      console.error(errorMsg);
      return new Response(JSON.stringify({ error: "Service account configuration error on server.", details: errorMsg }), { status: 500, headers: { "Content-Type": "application/json" } });
    }
    const privateKey = privateKeyFromEnv.replace(/\\n/g, '\n');

    const incomingPayload: any = await req.json();
    console.log("Received payload:", JSON.stringify(incomingPayload, null, 2));
    console.log(`DEBUG: Payload type = "${incomingPayload.type}" (Type: ${typeof incomingPayload.type})`);
    console.log(`DEBUG: Payload recipientUserId = "${incomingPayload.recipientUserId}" (Type: ${typeof incomingPayload.recipientUserId})`);
    console.log(`DEBUG: Payload record.assigned_to = "${incomingPayload.record?.assigned_to}" (Type: ${typeof incomingPayload.record?.assigned_to})`);
    console.log(`DEBUG Check (type FOLLOW_UP): ${incomingPayload.type === "FOLLOW_UP"}`);
    console.log(`DEBUG Check (recipientUserId truthy): ${!!incomingPayload.recipientUserId}`);
    console.log(`DEBUG Check (record.assigned_to truthy): ${!!incomingPayload.record?.assigned_to}`);


    let targetUserId: string | undefined;
    let notificationTitle: string = "";
    let notificationBody: string = "";

    if (
      incomingPayload.type === "INSERT" &&
      incomingPayload.table === "tasks" &&
      incomingPayload.record &&
      typeof incomingPayload.record.assigned_to === 'string' &&
      incomingPayload.record.assigned_to.trim() !== ''
    ) {
      const webhookData = incomingPayload as WebHookPayload;
      const taskData = webhookData.record;
      targetUserId = taskData.assigned_to;
      notificationTitle = "New Task Assigned";
      let assignerName = `User ID ${taskData.assigned_by}`;
      try {
        const { data: assignerData } = await supabase
          .from("users")
          .select("user_fullname")
          .eq("id", taskData.assigned_by)
          .single();
        if (assignerData && assignerData.user_fullname) {
          assignerName = assignerData.user_fullname;
        }
      } catch (e) { console.warn("Could not fetch assigner's name", e); }
      notificationBody = `'${taskData.task_title}' was assigned to you by ${assignerName}.`;
      console.log("Processing new task assignment for user ID:", targetUserId);

    } else if (
      incomingPayload.type === "FOLLOW_UP" &&
      incomingPayload.recipientUserId &&
      typeof incomingPayload.recipientUserId === 'string' &&
      incomingPayload.recipientUserId.trim() !== ''
    ) {
      console.log("DEBUG: Entered FOLLOW_UP block successfully.");
      const followUpData = incomingPayload as FollowUpPayload;
      targetUserId = followUpData.recipientUserId;
      notificationTitle = "Task Follow-up";
      notificationBody = `${followUpData.followedUpByUserName} made a follow-up on task: ${followUpData.taskTitle}.`;
      console.log("Processing follow-up notification for user ID:", targetUserId);

    } else {
      console.log("Event not processed: Conditions for INSERT or FOLLOW_UP not met.");
      console.log(`Details for no-process: type="${incomingPayload.type}", table="${incomingPayload.table}", record.assigned_to="${incomingPayload.record?.assigned_to}", recipientUserId="${incomingPayload.recipientUserId}"`);
      return new Response(JSON.stringify({ message: "No relevant event to process based on payload structure or missing fields." }), { status: 200, headers: { "Content-Type": "application/json" } });
    }

    if (!targetUserId) {
      console.log("No target user ID identified after conditional processing. Cannot send notification.");
      return new Response(JSON.stringify({ message: "No target user for notification." }),{ status: 400, headers: { "Content-Type": "application/json" } });
    }

    console.log(`Workspaceing FCM token for user ID: ${targetUserId}...`);
    const { data: userData, error: userError } = await supabase
      .from("users")
      .select("fcm_token")
      .eq("id", targetUserId)
      .single();

    if (userError) {
      console.error("Error during user lookup:", userError.message);
      return new Response(JSON.stringify({ error: "Error looking up user", details: userError.message }), { status: 400, headers: { "Content-Type": "application/json" } });
    }

    if (!userData?.fcm_token || (userData.fcm_token as string).trim() === '') {
      const noTokenMsg = `FCM token not found or is empty for user ID: ${targetUserId}. Notification not sent.`;
      console.warn(noTokenMsg);
      return new Response(JSON.stringify({ message: noTokenMsg }), { status: 200, headers: { "Content-Type": "application/json" } });
    }
    const fcmToken = userData.fcm_token as string;
    console.log(`FCM token for user ${targetUserId}: ${fcmToken ? "(Token Present)" : "(Token Empty/Null!)"}`);

    const fcmResponse = await sendFcmNotification(fcmToken, notificationTitle, notificationBody, clientEmail, privateKey, projectId);

    return new Response(JSON.stringify({ success: true, fcmResponse: fcmResponse }), { status: 200, headers: { "Content-Type": "application/json" } });

  } catch (err) {
    const errorDetails = err instanceof Error ? { message: err.message, stack: err.stack } : { message: String(err) };
    console.error("FATAL error in function handler:", errorDetails.message, errorDetails.stack);
    return new Response(JSON.stringify({ error: "Internal server error", details: errorDetails.message }), { status: 500, headers: { "Content-Type": "application/json" } });
  }
});