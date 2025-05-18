// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversationStruct extends BaseStruct {
  ConversationStruct({
    String? id,
    String? user1Id,
    String? user2Id,
    String? lastMessage,
    String? createdAt,
    String? updatedAt,
    String? msgsUserFullname,
  })  : _id = id,
        _user1Id = user1Id,
        _user2Id = user2Id,
        _lastMessage = lastMessage,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _msgsUserFullname = msgsUserFullname;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "user1_id" field.
  String? _user1Id;
  String get user1Id => _user1Id ?? '';
  set user1Id(String? val) => _user1Id = val;

  bool hasUser1Id() => _user1Id != null;

  // "user2_id" field.
  String? _user2Id;
  String get user2Id => _user2Id ?? '';
  set user2Id(String? val) => _user2Id = val;

  bool hasUser2Id() => _user2Id != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  set lastMessage(String? val) => _lastMessage = val;

  bool hasLastMessage() => _lastMessage != null;

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

  // "msgs_user_fullname" field.
  String? _msgsUserFullname;
  String get msgsUserFullname => _msgsUserFullname ?? '';
  set msgsUserFullname(String? val) => _msgsUserFullname = val;

  bool hasMsgsUserFullname() => _msgsUserFullname != null;

  static ConversationStruct fromMap(Map<String, dynamic> data) =>
      ConversationStruct(
        id: data['id'] as String?,
        user1Id: data['user1_id'] as String?,
        user2Id: data['user2_id'] as String?,
        lastMessage: data['last_message'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        msgsUserFullname: data['msgs_user_fullname'] as String?,
      );

  static ConversationStruct? maybeFromMap(dynamic data) => data is Map
      ? ConversationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user1_id': _user1Id,
        'user2_id': _user2Id,
        'last_message': _lastMessage,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'msgs_user_fullname': _msgsUserFullname,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'user1_id': serializeParam(
          _user1Id,
          ParamType.String,
        ),
        'user2_id': serializeParam(
          _user2Id,
          ParamType.String,
        ),
        'last_message': serializeParam(
          _lastMessage,
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
        'msgs_user_fullname': serializeParam(
          _msgsUserFullname,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConversationStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConversationStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        user1Id: deserializeParam(
          data['user1_id'],
          ParamType.String,
          false,
        ),
        user2Id: deserializeParam(
          data['user2_id'],
          ParamType.String,
          false,
        ),
        lastMessage: deserializeParam(
          data['last_message'],
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
        msgsUserFullname: deserializeParam(
          data['msgs_user_fullname'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConversationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConversationStruct &&
        id == other.id &&
        user1Id == other.user1Id &&
        user2Id == other.user2Id &&
        lastMessage == other.lastMessage &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        msgsUserFullname == other.msgsUserFullname;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        user1Id,
        user2Id,
        lastMessage,
        createdAt,
        updatedAt,
        msgsUserFullname
      ]);
}

ConversationStruct createConversationStruct({
  String? id,
  String? user1Id,
  String? user2Id,
  String? lastMessage,
  String? createdAt,
  String? updatedAt,
  String? msgsUserFullname,
}) =>
    ConversationStruct(
      id: id,
      user1Id: user1Id,
      user2Id: user2Id,
      lastMessage: lastMessage,
      createdAt: createdAt,
      updatedAt: updatedAt,
      msgsUserFullname: msgsUserFullname,
    );
