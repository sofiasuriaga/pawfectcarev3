// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignedByUserStruct extends BaseStruct {
  AssignedByUserStruct({
    String? id,
    String? userType,
    String? userStatus,
    String? userFullname,
  })  : _id = id,
        _userType = userType,
        _userStatus = userStatus,
        _userFullname = userFullname;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "user_type" field.
  String? _userType;
  String get userType => _userType ?? '';
  set userType(String? val) => _userType = val;

  bool hasUserType() => _userType != null;

  // "user_status" field.
  String? _userStatus;
  String get userStatus => _userStatus ?? '';
  set userStatus(String? val) => _userStatus = val;

  bool hasUserStatus() => _userStatus != null;

  // "user_fullname" field.
  String? _userFullname;
  String get userFullname => _userFullname ?? '';
  set userFullname(String? val) => _userFullname = val;

  bool hasUserFullname() => _userFullname != null;

  static AssignedByUserStruct fromMap(Map<String, dynamic> data) =>
      AssignedByUserStruct(
        id: data['id'] as String?,
        userType: data['user_type'] as String?,
        userStatus: data['user_status'] as String?,
        userFullname: data['user_fullname'] as String?,
      );

  static AssignedByUserStruct? maybeFromMap(dynamic data) => data is Map
      ? AssignedByUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_type': _userType,
        'user_status': _userStatus,
        'user_fullname': _userFullname,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'user_type': serializeParam(
          _userType,
          ParamType.String,
        ),
        'user_status': serializeParam(
          _userStatus,
          ParamType.String,
        ),
        'user_fullname': serializeParam(
          _userFullname,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssignedByUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssignedByUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        userType: deserializeParam(
          data['user_type'],
          ParamType.String,
          false,
        ),
        userStatus: deserializeParam(
          data['user_status'],
          ParamType.String,
          false,
        ),
        userFullname: deserializeParam(
          data['user_fullname'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssignedByUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssignedByUserStruct &&
        id == other.id &&
        userType == other.userType &&
        userStatus == other.userStatus &&
        userFullname == other.userFullname;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, userType, userStatus, userFullname]);
}

AssignedByUserStruct createAssignedByUserStruct({
  String? id,
  String? userType,
  String? userStatus,
  String? userFullname,
}) =>
    AssignedByUserStruct(
      id: id,
      userType: userType,
      userStatus: userStatus,
      userFullname: userFullname,
    );
