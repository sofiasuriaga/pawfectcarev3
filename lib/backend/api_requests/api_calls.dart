import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterUserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUser',
      apiUrl: 'https://brtomluacdyeinlngdww.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDogRecipeCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDogRecipe',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/functions/v1/super-task',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDogsCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDogs',
      apiUrl: 'https://brtomluacdyeinlngdww.supabase.co/rest/v1/dogs?',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTasksWithDogsCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTasksWithDogs',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/functions/v1/tasks_dogV2',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsers',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/users?id=eq.${id}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? getUsers(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_type''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_fullname''',
      ));
  static String? userStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].user_status''',
      ));
}

class RegisterUserPatchCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? userFullname = '',
    String? contactnumber = '',
    String? userType = '',
    String? email = '',
    String? userStatus = '',
    String? gender = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}",
"user_fullname": "${escapeStringForJson(userFullname)}",
"contactnumber": "${escapeStringForJson(contactnumber)}",
"user_type": "${escapeStringForJson(userType)}",
"email": "${escapeStringForJson(email)}",
"user_status": "${escapeStringForJson(userStatus)}",
"gender": "${escapeStringForJson(gender)}"

}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'registerUserPatch',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/users?id=eq.${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{"email": "${escapeStringForJson(email)}",
"password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  static dynamic? authenticated(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static String? accesstoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class TasksFollowUpTriggerCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? lastFollowUpAt = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
"id": "${escapeStringForJson(id)}",
"last_follow_up_at": "${escapeStringForJson(lastFollowUpAt)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tasksFollowUpTrigger',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/tasks?id=eq.${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchCompleteCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? status = '',
    String? dateCompleted = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
"id": "${escapeStringForJson(id)}",
"status": "${escapeStringForJson(status)}",
"date_completed": "${escapeStringForJson(dateCompleted)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'patchComplete',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/tasks?id=eq.${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserByIdCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserById',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/users?id=eq.${id}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFoodIDCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteFoodID',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/feed_charts?id=eq.${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetConversationWithChatCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getConversationWithChat',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/functions/v1/smart-service',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchAlbumsCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? url = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
"id": "${escapeStringForJson(id)}",
"url": "${escapeStringForJson(url)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'patchAlbums',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/albums?id=eq.${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPhotosCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPhotos',
      apiUrl: 'https://brtomluacdyeinlngdww.supabase.co/rest/v1/photos',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchDogCall {
  static Future<ApiCallResponse> call({
    String? search = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{"search": "${escapeStringForJson(search)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchDog',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/functions/v1/rapid-endpoint',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserStatusCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? userStatus = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{"id": "${escapeStringForJson(id)}",
"user_status": "${escapeStringForJson(userStatus)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserStatus',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/users?id=eq.${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAlbumByIDCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteAlbumByID',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/albums?id=eq.${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTaskByIDCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteTaskByID',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/tasks?id=eq.${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DdddCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? message = '',
    String? action = '',
    String? targetType = '',
    String? targetId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}",
  "message": "${escapeStringForJson(message)}",
"action": "${escapeStringForJson(action)}",
"target_type": "${escapeStringForJson(targetType)}",
"target_id": "${escapeStringForJson(targetType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'dddd',
      apiUrl: 'https://brtomluacdyeinlngdww.supabase.co/rest/v1/notifications',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteDogCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteDog',
      apiUrl:
          'https://brtomluacdyeinlngdww.supabase.co/rest/v1/dogs?id=eq.${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: 'https://brtomluacdyeinlngdww.supabase.co/auth/v1/logout',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostConversationCall {
  static Future<ApiCallResponse> call({
    String? user1Id = '',
    String? user2Id = '',
    String? msgsUserFullname = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{"user1_id": "${escapeStringForJson(user1Id)}",
"user2_id": "${escapeStringForJson(user2Id)}",
"msgs_user_fullname": "${escapeStringForJson(msgsUserFullname)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postConversation',
      apiUrl: 'https://brtomluacdyeinlngdww.supabase.co/rest/v1/conversations',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetConversationCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getConversation',
      apiUrl: 'https://brtomluacdyeinlngdww.supabase.co/rest/v1/conversations',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydG9tbHVhY2R5ZWlubG5nZHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY4ODgwMjgsImV4cCI6MjA2MjQ2NDAyOH0.qZyAj24JAsA-C3taca8ZFkfDI_9-q9dnW42xDWyNtTA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? user2Id(dynamic response) => (getJsonField(
        response,
        r'''$[:].user2_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? user1id(dynamic response) => (getJsonField(
        response,
        r'''$[:].user1_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
