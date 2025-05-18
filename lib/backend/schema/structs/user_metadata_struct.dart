// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserMetadataStruct extends BaseStruct {
  UserMetadataStruct({
    bool? emailVerified,
  }) : _emailVerified = emailVerified;

  // "email_verified" field.
  bool? _emailVerified;
  bool get emailVerified => _emailVerified ?? false;
  set emailVerified(bool? val) => _emailVerified = val;

  bool hasEmailVerified() => _emailVerified != null;

  static UserMetadataStruct fromMap(Map<String, dynamic> data) =>
      UserMetadataStruct(
        emailVerified: data['email_verified'] as bool?,
      );

  static UserMetadataStruct? maybeFromMap(dynamic data) => data is Map
      ? UserMetadataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email_verified': _emailVerified,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email_verified': serializeParam(
          _emailVerified,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserMetadataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserMetadataStruct(
        emailVerified: deserializeParam(
          data['email_verified'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserMetadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserMetadataStruct && emailVerified == other.emailVerified;
  }

  @override
  int get hashCode => const ListEquality().hash([emailVerified]);
}

UserMetadataStruct createUserMetadataStruct({
  bool? emailVerified,
}) =>
    UserMetadataStruct(
      emailVerified: emailVerified,
    );
