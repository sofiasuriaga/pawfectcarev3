// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserV3Struct extends BaseStruct {
  UserV3Struct({
    String? id,
    String? aud,
    String? role,
    String? email,
    String? emailConfirmedAt,
    String? phone,
    String? confirmedAt,
    String? lastSignInAt,
    AppMetadataStruct? appMetadata,
    UserMetadataStruct? userMetadata,
    List<IdentitiesStruct>? identities,
    String? createdAt,
    String? updatedAt,
    bool? isAnonymous,
  })  : _id = id,
        _aud = aud,
        _role = role,
        _email = email,
        _emailConfirmedAt = emailConfirmedAt,
        _phone = phone,
        _confirmedAt = confirmedAt,
        _lastSignInAt = lastSignInAt,
        _appMetadata = appMetadata,
        _userMetadata = userMetadata,
        _identities = identities,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _isAnonymous = isAnonymous;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "aud" field.
  String? _aud;
  String get aud => _aud ?? '';
  set aud(String? val) => _aud = val;

  bool hasAud() => _aud != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "email_confirmed_at" field.
  String? _emailConfirmedAt;
  String get emailConfirmedAt => _emailConfirmedAt ?? '';
  set emailConfirmedAt(String? val) => _emailConfirmedAt = val;

  bool hasEmailConfirmedAt() => _emailConfirmedAt != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "confirmed_at" field.
  String? _confirmedAt;
  String get confirmedAt => _confirmedAt ?? '';
  set confirmedAt(String? val) => _confirmedAt = val;

  bool hasConfirmedAt() => _confirmedAt != null;

  // "last_sign_in_at" field.
  String? _lastSignInAt;
  String get lastSignInAt => _lastSignInAt ?? '';
  set lastSignInAt(String? val) => _lastSignInAt = val;

  bool hasLastSignInAt() => _lastSignInAt != null;

  // "app_metadata" field.
  AppMetadataStruct? _appMetadata;
  AppMetadataStruct get appMetadata => _appMetadata ?? AppMetadataStruct();
  set appMetadata(AppMetadataStruct? val) => _appMetadata = val;

  void updateAppMetadata(Function(AppMetadataStruct) updateFn) {
    updateFn(_appMetadata ??= AppMetadataStruct());
  }

  bool hasAppMetadata() => _appMetadata != null;

  // "user_metadata" field.
  UserMetadataStruct? _userMetadata;
  UserMetadataStruct get userMetadata => _userMetadata ?? UserMetadataStruct();
  set userMetadata(UserMetadataStruct? val) => _userMetadata = val;

  void updateUserMetadata(Function(UserMetadataStruct) updateFn) {
    updateFn(_userMetadata ??= UserMetadataStruct());
  }

  bool hasUserMetadata() => _userMetadata != null;

  // "identities" field.
  List<IdentitiesStruct>? _identities;
  List<IdentitiesStruct> get identities => _identities ?? const [];
  set identities(List<IdentitiesStruct>? val) => _identities = val;

  void updateIdentities(Function(List<IdentitiesStruct>) updateFn) {
    updateFn(_identities ??= []);
  }

  bool hasIdentities() => _identities != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "is_anonymous" field.
  bool? _isAnonymous;
  bool get isAnonymous => _isAnonymous ?? false;
  set isAnonymous(bool? val) => _isAnonymous = val;

  bool hasIsAnonymous() => _isAnonymous != null;

  static UserV3Struct fromMap(Map<String, dynamic> data) => UserV3Struct(
        id: data['id'] as String?,
        aud: data['aud'] as String?,
        role: data['role'] as String?,
        email: data['email'] as String?,
        emailConfirmedAt: data['email_confirmed_at'] as String?,
        phone: data['phone'] as String?,
        confirmedAt: data['confirmed_at'] as String?,
        lastSignInAt: data['last_sign_in_at'] as String?,
        appMetadata: data['app_metadata'] is AppMetadataStruct
            ? data['app_metadata']
            : AppMetadataStruct.maybeFromMap(data['app_metadata']),
        userMetadata: data['user_metadata'] is UserMetadataStruct
            ? data['user_metadata']
            : UserMetadataStruct.maybeFromMap(data['user_metadata']),
        identities: getStructList(
          data['identities'],
          IdentitiesStruct.fromMap,
        ),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        isAnonymous: data['is_anonymous'] as bool?,
      );

  static UserV3Struct? maybeFromMap(dynamic data) =>
      data is Map ? UserV3Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'aud': _aud,
        'role': _role,
        'email': _email,
        'email_confirmed_at': _emailConfirmedAt,
        'phone': _phone,
        'confirmed_at': _confirmedAt,
        'last_sign_in_at': _lastSignInAt,
        'app_metadata': _appMetadata?.toMap(),
        'user_metadata': _userMetadata?.toMap(),
        'identities': _identities?.map((e) => e.toMap()).toList(),
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'is_anonymous': _isAnonymous,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'aud': serializeParam(
          _aud,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'email_confirmed_at': serializeParam(
          _emailConfirmedAt,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'confirmed_at': serializeParam(
          _confirmedAt,
          ParamType.String,
        ),
        'last_sign_in_at': serializeParam(
          _lastSignInAt,
          ParamType.String,
        ),
        'app_metadata': serializeParam(
          _appMetadata,
          ParamType.DataStruct,
        ),
        'user_metadata': serializeParam(
          _userMetadata,
          ParamType.DataStruct,
        ),
        'identities': serializeParam(
          _identities,
          ParamType.DataStruct,
          isList: true,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'is_anonymous': serializeParam(
          _isAnonymous,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserV3Struct fromSerializableMap(Map<String, dynamic> data) =>
      UserV3Struct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        aud: deserializeParam(
          data['aud'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        emailConfirmedAt: deserializeParam(
          data['email_confirmed_at'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        confirmedAt: deserializeParam(
          data['confirmed_at'],
          ParamType.String,
          false,
        ),
        lastSignInAt: deserializeParam(
          data['last_sign_in_at'],
          ParamType.String,
          false,
        ),
        appMetadata: deserializeStructParam(
          data['app_metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: AppMetadataStruct.fromSerializableMap,
        ),
        userMetadata: deserializeStructParam(
          data['user_metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: UserMetadataStruct.fromSerializableMap,
        ),
        identities: deserializeStructParam<IdentitiesStruct>(
          data['identities'],
          ParamType.DataStruct,
          true,
          structBuilder: IdentitiesStruct.fromSerializableMap,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        isAnonymous: deserializeParam(
          data['is_anonymous'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserV3Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserV3Struct &&
        id == other.id &&
        aud == other.aud &&
        role == other.role &&
        email == other.email &&
        emailConfirmedAt == other.emailConfirmedAt &&
        phone == other.phone &&
        confirmedAt == other.confirmedAt &&
        lastSignInAt == other.lastSignInAt &&
        appMetadata == other.appMetadata &&
        userMetadata == other.userMetadata &&
        listEquality.equals(identities, other.identities) &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        isAnonymous == other.isAnonymous;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        aud,
        role,
        email,
        emailConfirmedAt,
        phone,
        confirmedAt,
        lastSignInAt,
        appMetadata,
        userMetadata,
        identities,
        createdAt,
        updatedAt,
        isAnonymous
      ]);
}

UserV3Struct createUserV3Struct({
  String? id,
  String? aud,
  String? role,
  String? email,
  String? emailConfirmedAt,
  String? phone,
  String? confirmedAt,
  String? lastSignInAt,
  AppMetadataStruct? appMetadata,
  UserMetadataStruct? userMetadata,
  String? createdAt,
  String? updatedAt,
  bool? isAnonymous,
}) =>
    UserV3Struct(
      id: id,
      aud: aud,
      role: role,
      email: email,
      emailConfirmedAt: emailConfirmedAt,
      phone: phone,
      confirmedAt: confirmedAt,
      lastSignInAt: lastSignInAt,
      appMetadata: appMetadata ?? AppMetadataStruct(),
      userMetadata: userMetadata ?? UserMetadataStruct(),
      createdAt: createdAt,
      updatedAt: updatedAt,
      isAnonymous: isAnonymous,
    );
