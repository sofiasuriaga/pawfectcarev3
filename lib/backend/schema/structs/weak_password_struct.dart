// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeakPasswordStruct extends BaseStruct {
  WeakPasswordStruct({
    String? message,
    List<String>? reasons,
  })  : _message = message,
        _reasons = reasons;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "reasons" field.
  List<String>? _reasons;
  List<String> get reasons => _reasons ?? const [];
  set reasons(List<String>? val) => _reasons = val;

  void updateReasons(Function(List<String>) updateFn) {
    updateFn(_reasons ??= []);
  }

  bool hasReasons() => _reasons != null;

  static WeakPasswordStruct fromMap(Map<String, dynamic> data) =>
      WeakPasswordStruct(
        message: data['message'] as String?,
        reasons: getDataList(data['reasons']),
      );

  static WeakPasswordStruct? maybeFromMap(dynamic data) => data is Map
      ? WeakPasswordStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'reasons': _reasons,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'reasons': serializeParam(
          _reasons,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static WeakPasswordStruct fromSerializableMap(Map<String, dynamic> data) =>
      WeakPasswordStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        reasons: deserializeParam<String>(
          data['reasons'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'WeakPasswordStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WeakPasswordStruct &&
        message == other.message &&
        listEquality.equals(reasons, other.reasons);
  }

  @override
  int get hashCode => const ListEquality().hash([message, reasons]);
}

WeakPasswordStruct createWeakPasswordStruct({
  String? message,
}) =>
    WeakPasswordStruct(
      message: message,
    );
