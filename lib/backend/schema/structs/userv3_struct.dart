// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Userv3Struct extends BaseStruct {
  Userv3Struct({
    String? id,
    String? createdAt,
    String? userFullname,
    String? password,
    String? contactnumber,
    String? userType,
    String? email,
    String? userStatus,
    String? otp,
    String? gender,
  })  : _id = id,
        _createdAt = createdAt,
        _userFullname = userFullname,
        _password = password,
        _contactnumber = contactnumber,
        _userType = userType,
        _email = email,
        _userStatus = userStatus,
        _otp = otp,
        _gender = gender;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "user_fullname" field.
  String? _userFullname;
  String get userFullname => _userFullname ?? '';
  set userFullname(String? val) => _userFullname = val;

  bool hasUserFullname() => _userFullname != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "contactnumber" field.
  String? _contactnumber;
  String get contactnumber => _contactnumber ?? '';
  set contactnumber(String? val) => _contactnumber = val;

  bool hasContactnumber() => _contactnumber != null;

  // "user_type" field.
  String? _userType;
  String get userType => _userType ?? '';
  set userType(String? val) => _userType = val;

  bool hasUserType() => _userType != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "user_status" field.
  String? _userStatus;
  String get userStatus => _userStatus ?? '';
  set userStatus(String? val) => _userStatus = val;

  bool hasUserStatus() => _userStatus != null;

  // "otp" field.
  String? _otp;
  String get otp => _otp ?? '';
  set otp(String? val) => _otp = val;

  bool hasOtp() => _otp != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  static Userv3Struct fromMap(Map<String, dynamic> data) => Userv3Struct(
        id: data['id'] as String?,
        createdAt: data['created_at'] as String?,
        userFullname: data['user_fullname'] as String?,
        password: data['password'] as String?,
        contactnumber: data['contactnumber'] as String?,
        userType: data['user_type'] as String?,
        email: data['email'] as String?,
        userStatus: data['user_status'] as String?,
        otp: data['otp'] as String?,
        gender: data['gender'] as String?,
      );

  static Userv3Struct? maybeFromMap(dynamic data) =>
      data is Map ? Userv3Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'user_fullname': _userFullname,
        'password': _password,
        'contactnumber': _contactnumber,
        'user_type': _userType,
        'email': _email,
        'user_status': _userStatus,
        'otp': _otp,
        'gender': _gender,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'user_fullname': serializeParam(
          _userFullname,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'contactnumber': serializeParam(
          _contactnumber,
          ParamType.String,
        ),
        'user_type': serializeParam(
          _userType,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'user_status': serializeParam(
          _userStatus,
          ParamType.String,
        ),
        'otp': serializeParam(
          _otp,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
      }.withoutNulls;

  static Userv3Struct fromSerializableMap(Map<String, dynamic> data) =>
      Userv3Struct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        userFullname: deserializeParam(
          data['user_fullname'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        contactnumber: deserializeParam(
          data['contactnumber'],
          ParamType.String,
          false,
        ),
        userType: deserializeParam(
          data['user_type'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        userStatus: deserializeParam(
          data['user_status'],
          ParamType.String,
          false,
        ),
        otp: deserializeParam(
          data['otp'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Userv3Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Userv3Struct &&
        id == other.id &&
        createdAt == other.createdAt &&
        userFullname == other.userFullname &&
        password == other.password &&
        contactnumber == other.contactnumber &&
        userType == other.userType &&
        email == other.email &&
        userStatus == other.userStatus &&
        otp == other.otp &&
        gender == other.gender;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        userFullname,
        password,
        contactnumber,
        userType,
        email,
        userStatus,
        otp,
        gender
      ]);
}

Userv3Struct createUserv3Struct({
  String? id,
  String? createdAt,
  String? userFullname,
  String? password,
  String? contactnumber,
  String? userType,
  String? email,
  String? userStatus,
  String? otp,
  String? gender,
}) =>
    Userv3Struct(
      id: id,
      createdAt: createdAt,
      userFullname: userFullname,
      password: password,
      contactnumber: contactnumber,
      userType: userType,
      email: email,
      userStatus: userStatus,
      otp: otp,
      gender: gender,
    );
