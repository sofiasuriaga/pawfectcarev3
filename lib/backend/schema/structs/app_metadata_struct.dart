// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppMetadataStruct extends BaseStruct {
  AppMetadataStruct({
    String? provider,
    List<String>? providers,
  })  : _provider = provider,
        _providers = providers;

  // "provider" field.
  String? _provider;
  String get provider => _provider ?? '';
  set provider(String? val) => _provider = val;

  bool hasProvider() => _provider != null;

  // "providers" field.
  List<String>? _providers;
  List<String> get providers => _providers ?? const [];
  set providers(List<String>? val) => _providers = val;

  void updateProviders(Function(List<String>) updateFn) {
    updateFn(_providers ??= []);
  }

  bool hasProviders() => _providers != null;

  static AppMetadataStruct fromMap(Map<String, dynamic> data) =>
      AppMetadataStruct(
        provider: data['provider'] as String?,
        providers: getDataList(data['providers']),
      );

  static AppMetadataStruct? maybeFromMap(dynamic data) => data is Map
      ? AppMetadataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'provider': _provider,
        'providers': _providers,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'provider': serializeParam(
          _provider,
          ParamType.String,
        ),
        'providers': serializeParam(
          _providers,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AppMetadataStruct fromSerializableMap(Map<String, dynamic> data) =>
      AppMetadataStruct(
        provider: deserializeParam(
          data['provider'],
          ParamType.String,
          false,
        ),
        providers: deserializeParam<String>(
          data['providers'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AppMetadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AppMetadataStruct &&
        provider == other.provider &&
        listEquality.equals(providers, other.providers);
  }

  @override
  int get hashCode => const ListEquality().hash([provider, providers]);
}

AppMetadataStruct createAppMetadataStruct({
  String? provider,
}) =>
    AppMetadataStruct(
      provider: provider,
    );
