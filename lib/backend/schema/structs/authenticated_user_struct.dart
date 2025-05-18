// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthenticatedUserStruct extends BaseStruct {
  AuthenticatedUserStruct({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    int? expiresAt,
    String? refreshToken,
    UserV3Struct? userV3,
    WeakPasswordStruct? weakPassword,
  })  : _accessToken = accessToken,
        _tokenType = tokenType,
        _expiresIn = expiresIn,
        _expiresAt = expiresAt,
        _refreshToken = refreshToken,
        _userV3 = userV3,
        _weakPassword = weakPassword;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "token_type" field.
  String? _tokenType;
  String get tokenType => _tokenType ?? '';
  set tokenType(String? val) => _tokenType = val;

  bool hasTokenType() => _tokenType != null;

  // "expires_in" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  // "expires_at" field.
  int? _expiresAt;
  int get expiresAt => _expiresAt ?? 0;
  set expiresAt(int? val) => _expiresAt = val;

  void incrementExpiresAt(int amount) => expiresAt = expiresAt + amount;

  bool hasExpiresAt() => _expiresAt != null;

  // "refresh_token" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  // "userV3" field.
  UserV3Struct? _userV3;
  UserV3Struct get userV3 => _userV3 ?? UserV3Struct();
  set userV3(UserV3Struct? val) => _userV3 = val;

  void updateUserV3(Function(UserV3Struct) updateFn) {
    updateFn(_userV3 ??= UserV3Struct());
  }

  bool hasUserV3() => _userV3 != null;

  // "weak_password" field.
  WeakPasswordStruct? _weakPassword;
  WeakPasswordStruct get weakPassword => _weakPassword ?? WeakPasswordStruct();
  set weakPassword(WeakPasswordStruct? val) => _weakPassword = val;

  void updateWeakPassword(Function(WeakPasswordStruct) updateFn) {
    updateFn(_weakPassword ??= WeakPasswordStruct());
  }

  bool hasWeakPassword() => _weakPassword != null;

  static AuthenticatedUserStruct fromMap(Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
        accessToken: data['access_token'] as String?,
        tokenType: data['token_type'] as String?,
        expiresIn: castToType<int>(data['expires_in']),
        expiresAt: castToType<int>(data['expires_at']),
        refreshToken: data['refresh_token'] as String?,
        userV3: data['userV3'] is UserV3Struct
            ? data['userV3']
            : UserV3Struct.maybeFromMap(data['userV3']),
        weakPassword: data['weak_password'] is WeakPasswordStruct
            ? data['weak_password']
            : WeakPasswordStruct.maybeFromMap(data['weak_password']),
      );

  static AuthenticatedUserStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthenticatedUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'token_type': _tokenType,
        'expires_in': _expiresIn,
        'expires_at': _expiresAt,
        'refresh_token': _refreshToken,
        'userV3': _userV3?.toMap(),
        'weak_password': _weakPassword?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'token_type': serializeParam(
          _tokenType,
          ParamType.String,
        ),
        'expires_in': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
        'expires_at': serializeParam(
          _expiresAt,
          ParamType.int,
        ),
        'refresh_token': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'userV3': serializeParam(
          _userV3,
          ParamType.DataStruct,
        ),
        'weak_password': serializeParam(
          _weakPassword,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AuthenticatedUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        tokenType: deserializeParam(
          data['token_type'],
          ParamType.String,
          false,
        ),
        expiresIn: deserializeParam(
          data['expires_in'],
          ParamType.int,
          false,
        ),
        expiresAt: deserializeParam(
          data['expires_at'],
          ParamType.int,
          false,
        ),
        refreshToken: deserializeParam(
          data['refresh_token'],
          ParamType.String,
          false,
        ),
        userV3: deserializeStructParam(
          data['userV3'],
          ParamType.DataStruct,
          false,
          structBuilder: UserV3Struct.fromSerializableMap,
        ),
        weakPassword: deserializeStructParam(
          data['weak_password'],
          ParamType.DataStruct,
          false,
          structBuilder: WeakPasswordStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AuthenticatedUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthenticatedUserStruct &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        expiresIn == other.expiresIn &&
        expiresAt == other.expiresAt &&
        refreshToken == other.refreshToken &&
        userV3 == other.userV3 &&
        weakPassword == other.weakPassword;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accessToken,
        tokenType,
        expiresIn,
        expiresAt,
        refreshToken,
        userV3,
        weakPassword
      ]);
}

AuthenticatedUserStruct createAuthenticatedUserStruct({
  String? accessToken,
  String? tokenType,
  int? expiresIn,
  int? expiresAt,
  String? refreshToken,
  UserV3Struct? userV3,
  WeakPasswordStruct? weakPassword,
}) =>
    AuthenticatedUserStruct(
      accessToken: accessToken,
      tokenType: tokenType,
      expiresIn: expiresIn,
      expiresAt: expiresAt,
      refreshToken: refreshToken,
      userV3: userV3 ?? UserV3Struct(),
      weakPassword: weakPassword ?? WeakPasswordStruct(),
    );
