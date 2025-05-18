// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdentitiesStruct extends BaseStruct {
  IdentitiesStruct({
    String? identityId,
    String? id,
    String? userId,
    IdentityDataStruct? identityData,
    String? provider,
    String? lastSignInAt,
    String? createdAt,
    String? updatedAt,
    String? email,
  })  : _identityId = identityId,
        _id = id,
        _userId = userId,
        _identityData = identityData,
        _provider = provider,
        _lastSignInAt = lastSignInAt,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _email = email;

  // "identity_id" field.
  String? _identityId;
  String get identityId => _identityId ?? '';
  set identityId(String? val) => _identityId = val;

  bool hasIdentityId() => _identityId != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "identity_data" field.
  IdentityDataStruct? _identityData;
  IdentityDataStruct get identityData => _identityData ?? IdentityDataStruct();
  set identityData(IdentityDataStruct? val) => _identityData = val;

  void updateIdentityData(Function(IdentityDataStruct) updateFn) {
    updateFn(_identityData ??= IdentityDataStruct());
  }

  bool hasIdentityData() => _identityData != null;

  // "provider" field.
  String? _provider;
  String get provider => _provider ?? '';
  set provider(String? val) => _provider = val;

  bool hasProvider() => _provider != null;

  // "last_sign_in_at" field.
  String? _lastSignInAt;
  String get lastSignInAt => _lastSignInAt ?? '';
  set lastSignInAt(String? val) => _lastSignInAt = val;

  bool hasLastSignInAt() => _lastSignInAt != null;

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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static IdentitiesStruct fromMap(Map<String, dynamic> data) =>
      IdentitiesStruct(
        identityId: data['identity_id'] as String?,
        id: data['id'] as String?,
        userId: data['user_id'] as String?,
        identityData: data['identity_data'] is IdentityDataStruct
            ? data['identity_data']
            : IdentityDataStruct.maybeFromMap(data['identity_data']),
        provider: data['provider'] as String?,
        lastSignInAt: data['last_sign_in_at'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        email: data['email'] as String?,
      );

  static IdentitiesStruct? maybeFromMap(dynamic data) => data is Map
      ? IdentitiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'identity_id': _identityId,
        'id': _id,
        'user_id': _userId,
        'identity_data': _identityData?.toMap(),
        'provider': _provider,
        'last_sign_in_at': _lastSignInAt,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'identity_id': serializeParam(
          _identityId,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'identity_data': serializeParam(
          _identityData,
          ParamType.DataStruct,
        ),
        'provider': serializeParam(
          _provider,
          ParamType.String,
        ),
        'last_sign_in_at': serializeParam(
          _lastSignInAt,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static IdentitiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      IdentitiesStruct(
        identityId: deserializeParam(
          data['identity_id'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        identityData: deserializeStructParam(
          data['identity_data'],
          ParamType.DataStruct,
          false,
          structBuilder: IdentityDataStruct.fromSerializableMap,
        ),
        provider: deserializeParam(
          data['provider'],
          ParamType.String,
          false,
        ),
        lastSignInAt: deserializeParam(
          data['last_sign_in_at'],
          ParamType.String,
          false,
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IdentitiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IdentitiesStruct &&
        identityId == other.identityId &&
        id == other.id &&
        userId == other.userId &&
        identityData == other.identityData &&
        provider == other.provider &&
        lastSignInAt == other.lastSignInAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([
        identityId,
        id,
        userId,
        identityData,
        provider,
        lastSignInAt,
        createdAt,
        updatedAt,
        email
      ]);
}

IdentitiesStruct createIdentitiesStruct({
  String? identityId,
  String? id,
  String? userId,
  IdentityDataStruct? identityData,
  String? provider,
  String? lastSignInAt,
  String? createdAt,
  String? updatedAt,
  String? email,
}) =>
    IdentitiesStruct(
      identityId: identityId,
      id: id,
      userId: userId,
      identityData: identityData ?? IdentityDataStruct(),
      provider: provider,
      lastSignInAt: lastSignInAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      email: email,
    );
