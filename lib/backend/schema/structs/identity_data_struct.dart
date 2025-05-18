// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdentityDataStruct extends BaseStruct {
  IdentityDataStruct({
    String? email,
    bool? emailVerified,
    bool? phoneVerified,
    String? sub,
  })  : _email = email,
        _emailVerified = emailVerified,
        _phoneVerified = phoneVerified,
        _sub = sub;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "email_verified" field.
  bool? _emailVerified;
  bool get emailVerified => _emailVerified ?? false;
  set emailVerified(bool? val) => _emailVerified = val;

  bool hasEmailVerified() => _emailVerified != null;

  // "phone_verified" field.
  bool? _phoneVerified;
  bool get phoneVerified => _phoneVerified ?? false;
  set phoneVerified(bool? val) => _phoneVerified = val;

  bool hasPhoneVerified() => _phoneVerified != null;

  // "sub" field.
  String? _sub;
  String get sub => _sub ?? '';
  set sub(String? val) => _sub = val;

  bool hasSub() => _sub != null;

  static IdentityDataStruct fromMap(Map<String, dynamic> data) =>
      IdentityDataStruct(
        email: data['email'] as String?,
        emailVerified: data['email_verified'] as bool?,
        phoneVerified: data['phone_verified'] as bool?,
        sub: data['sub'] as String?,
      );

  static IdentityDataStruct? maybeFromMap(dynamic data) => data is Map
      ? IdentityDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'email_verified': _emailVerified,
        'phone_verified': _phoneVerified,
        'sub': _sub,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'email_verified': serializeParam(
          _emailVerified,
          ParamType.bool,
        ),
        'phone_verified': serializeParam(
          _phoneVerified,
          ParamType.bool,
        ),
        'sub': serializeParam(
          _sub,
          ParamType.String,
        ),
      }.withoutNulls;

  static IdentityDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      IdentityDataStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        emailVerified: deserializeParam(
          data['email_verified'],
          ParamType.bool,
          false,
        ),
        phoneVerified: deserializeParam(
          data['phone_verified'],
          ParamType.bool,
          false,
        ),
        sub: deserializeParam(
          data['sub'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IdentityDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IdentityDataStruct &&
        email == other.email &&
        emailVerified == other.emailVerified &&
        phoneVerified == other.phoneVerified &&
        sub == other.sub;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([email, emailVerified, phoneVerified, sub]);
}

IdentityDataStruct createIdentityDataStruct({
  String? email,
  bool? emailVerified,
  bool? phoneVerified,
  String? sub,
}) =>
    IdentityDataStruct(
      email: email,
      emailVerified: emailVerified,
      phoneVerified: phoneVerified,
      sub: sub,
    );
