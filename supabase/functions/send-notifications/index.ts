import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from "npm:@supabase/supabase-js@2";

interface Task {
  id: string;
  assigned_to: string;
  assigned_by: string;
  task_title: string;
  task_description: string;
}

interface WebHookPayload {
  type: "INSERT";
  table: string;
  record: Task;
  schema: "public";
  old_record: null | Task;
}

const supabaseUrl = Deno.env.get("SUPABASE_URL") ?? "https://brtomluacdyeinlngdww.supabase.co";
const supabaseAnonKey = Deno.env.get("SUPABASE_ANON_KEY") ?? "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA";
const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function getAccessToken({
  clientEmail,
  privateKey,
}: {
  clientEmail: string;
  privateKey: string;
}): Promise<string> {
  const iat = Math.floor(Date.now() / 1000);
  const exp = iat + 3600;

  const header = {
    alg: "RS256",
    typ: "JWT",
  };

  const payload = {
    iss: clientEmail,
    scope: "https://www.googleapis.com/auth/firebase.messaging",
    aud: "https://oauth2.googleapis.com/token",
    iat,
    exp,
  };

  const encoder = new TextEncoder();
  const base64UrlEncode = (obj: unknown) =>
    btoa(JSON.stringify(obj))
      .replace(/\+/g, "-")
      .replace(/\//g, "_")
      .replace(/=+$/, "");

  const encodedHeader = base64UrlEncode(header);
  const encodedPayload = base64UrlEncode(payload);
  const token = `${encodedHeader}.${encodedPayload}`;

  const pemHeader = "-----BEGIN PRIVATE KEY-----";
  const pemFooter = "-----END PRIVATE KEY-----";
  const pemContents = privateKey
    .replace(pemHeader, "")
    .replace(pemFooter, "")
    .replace(/\s/g, "");
  const binaryDer = Uint8Array.from(atob(pemContents), (c) =>
    c.charCodeAt(0)
  );

  const cryptoKey = await crypto.subtle.importKey(
    "pkcs8",
    binaryDer.buffer,
    { name: "RSASSA-PKCS1-v1_5", hash: "SHA-256" },
    false,
    ["sign"]
  );

  const signature = await crypto.subtle.sign(
    "RSASSA-PKCS1-v1_5",
    cryptoKey,
    encoder.encode(token)
  );

  const encodedSignature = btoa(
    String.fromCharCode(...new Uint8Array(signature))
  )
    .replace(/\+/g, "-")
    .replace(/\//g, "_")
    .replace(/=+$/, "");

  const jwt = `${token}.${encodedSignature}`;

  const res = await fetch("https://oauth2.googleapis.com/token", {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body: new URLSearchParams({
      grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
      assertion: jwt,
    }),
  });

  const json = await res.json();
  if (!res.ok) {
    throw new Error(`Failed to get access token: ${JSON.stringify(json)}`);
  }

  return json.access_token;
}

Deno.serve(async (req) => {
  console.log("Incoming request to send-notifications function (v3 - Env Vars)");
  try {
    const clientEmail = Deno.env.get("SERVICE_ACCOUNT_CLIENT_EMAIL");
    const privateKeyFromEnv = Deno.env.get("SERVICE_ACCOUNT_PRIVATE_KEY");
    const projectId = Deno.env.get("SERVICE_ACCOUNT_PROJECT_ID");

    if (!clientEmail || !privateKeyFromEnv || !projectId) {
      const missingEnvVarsMsg = "CRITICAL: Service account environment variables (SERVICE_ACCOUNT_CLIENT_EMAIL, SERVICE_ACCOUNT_PRIVATE_KEY, SERVICE_ACCOUNT_PROJECT_ID) are not fully set in Supabase Function settings.";
      console.error(missingEnvVarsMsg);
      return new Response(
        JSON.stringify({ error: "Service account configuration error on server.", details: missingEnvVarsMsg }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }
    const privateKey = privateKeyFromEnv.replace(/\\n/g, '\n');

    const payload: WebHookPayload = await req.json();
    console.log("Received payload:", JSON.stringify(payload, null, 2));

    const taskData = payload.record;

    if (payload.type === "INSERT" && payload.table === "tasks" && taskData?.assigned_to) {
      const assignedUserId = taskData.assigned_to;
      console.log("Task assigned to user ID:", assignedUserId);

      console.log("Fetching user data from 'users' table...");
      const { data: userData, error: userError } = await supabase
        .from("users")
        .select("fcm_token")
        .eq("id", assignedUserId)
        .single();

      if (userError) {
        console.error("Error during user lookup:", userError.message);
        return new Response(
          JSON.stringify({ error: "Error looking up user", details: userError.message }),
          { status: 400, headers: { "Content-Type": "application/json" } }
        );
      }

      if (!userData?.fcm_token) {
        const noTokenMsg = `FCM token not found for user ID: ${assignedUserId}. No notification will be sent.`;
        console.warn(noTokenMsg);
        return new Response(
          JSON.stringify({ message: "FCM token not found for the assigned user. No notification sent.", details: noTokenMsg }),
          { status: 200, headers: { "Content-Type": "application/json" } }
        );
      }

      const fcmToken = userData.fcm_token as string;
      console.log("FCM token retrieved for user:", assignedUserId, fcmToken ? "(Token Present)" : "(Token Empty/Null!)");

      console.log("Attempting to get Google Cloud access token using client_email from env var...");
      const accessToken = await getAccessToken({ clientEmail, privateKey });
      console.log("Google Cloud access token retrieved:", accessToken ? "Token Present" : "Token NOT retrieved!");

      if (!accessToken) {
          const noAccessTokenMsg = "Failed to obtain Google Cloud access token. Cannot send FCM message.";
          console.error(noAccessTokenMsg);
          return new Response(
              JSON.stringify({ error: "Failed to get Google access token", details: noAccessTokenMsg }),
              { status: 500, headers: { "Content-Type": "application/json" } }
          );
      }

      console.log("Preparing FCM message payload...");
      const notificationPayload = {
        message: {
          token: fcmToken,
          notification: {
            title: "New Task Assigned",
            body: `${taskData.task_title} - assigned by ${taskData.assigned_by}`,
          },
        },
      };
      console.log("FCM message payload:", JSON.stringify(notificationPayload, null, 2));

      console.log(`Sending FCM message to project: ${projectId}...`);
      const res = await fetch(
        `https://fcm.googleapis.com/v1/projects/${projectId}/messages:send`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json", Authorization: `Bearer ${accessToken}` },
          body: JSON.stringify(notificationPayload),
        }
      );

      const responseBodyText = await res.text();
      let resData;
      try {
          resData = JSON.parse(responseBodyText);
      } catch (e) {
          console.error("FCM response was not valid JSON:", responseBodyText);
          resData = { error: "FCM response was not valid JSON", details: responseBodyText };
      }

      const success = res.ok;
      console.log("FCM response status:", res.status);
      console.log("FCM response data:", JSON.stringify(resData, null, 2));

      return new Response(
        JSON.stringify(success ? { success: true, fcmResponse: resData } : { error: "FCM Send Error", details: resData }),
        { status: success ? 200 : res.status, headers: { "Content-Type": "application/json" } }
      );
    } else {
      let reason = "Event not processed: ";
      if (payload.type !== "INSERT") reason += `type is ${payload.type}, not INSERT. `;
      if (payload.table !== "tasks") reason += `table is ${payload.table}, not tasks. `;
      if (!taskData?.assigned_to) reason += `taskData or taskData.assigned_to is missing. Check webhook payload structure (e.g., 'record' vs 'tasks').`;
      console.log(reason);
      return new Response(
        JSON.stringify({ message: "No relevant event to process", details: reason }),
        { status: 200, headers: { "Content-Type": "application/json" } }
      );
    }
  } catch (err) {
    const errorDetails = err instanceof Error ? { message: err.message, stack: err.stack } : { message: String(err) };
    console.error("FATAL: Unexpected error occurred in function handler:", errorDetails.message, errorDetails.stack);
    return new Response(
      JSON.stringify({ error: "Internal server error", details: errorDetails.message }),
      { status: 500, headers: { "Content-Type": "application/json" } }
    );
  }
});
