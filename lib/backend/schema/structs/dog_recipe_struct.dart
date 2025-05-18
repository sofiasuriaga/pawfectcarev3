// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DogRecipeStruct extends BaseStruct {
  DogRecipeStruct({
    String? chartRecipe,
    String? chartDosage,
    String? chartFrequency,
    DogStruct? dog,
  })  : _chartRecipe = chartRecipe,
        _chartDosage = chartDosage,
        _chartFrequency = chartFrequency,
        _dog = dog;

  // "chart_recipe" field.
  String? _chartRecipe;
  String get chartRecipe => _chartRecipe ?? '';
  set chartRecipe(String? val) => _chartRecipe = val;

  bool hasChartRecipe() => _chartRecipe != null;

  // "chart_dosage" field.
  String? _chartDosage;
  String get chartDosage => _chartDosage ?? '';
  set chartDosage(String? val) => _chartDosage = val;

  bool hasChartDosage() => _chartDosage != null;

  // "chart_frequency" field.
  String? _chartFrequency;
  String get chartFrequency => _chartFrequency ?? '';
  set chartFrequency(String? val) => _chartFrequency = val;

  bool hasChartFrequency() => _chartFrequency != null;

  // "dog" field.
  DogStruct? _dog;
  DogStruct get dog => _dog ?? DogStruct();
  set dog(DogStruct? val) => _dog = val;

  void updateDog(Function(DogStruct) updateFn) {
    updateFn(_dog ??= DogStruct());
  }

  bool hasDog() => _dog != null;

  static DogRecipeStruct fromMap(Map<String, dynamic> data) => DogRecipeStruct(
        chartRecipe: data['chart_recipe'] as String?,
        chartDosage: data['chart_dosage'] as String?,
        chartFrequency: data['chart_frequency'] as String?,
        dog: data['dog'] is DogStruct
            ? data['dog']
            : DogStruct.maybeFromMap(data['dog']),
      );

  static DogRecipeStruct? maybeFromMap(dynamic data) => data is Map
      ? DogRecipeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chart_recipe': _chartRecipe,
        'chart_dosage': _chartDosage,
        'chart_frequency': _chartFrequency,
        'dog': _dog?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chart_recipe': serializeParam(
          _chartRecipe,
          ParamType.String,
        ),
        'chart_dosage': serializeParam(
          _chartDosage,
          ParamType.String,
        ),
        'chart_frequency': serializeParam(
          _chartFrequency,
          ParamType.String,
        ),
        'dog': serializeParam(
          _dog,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DogRecipeStruct fromSerializableMap(Map<String, dynamic> data) =>
      DogRecipeStruct(
        chartRecipe: deserializeParam(
          data['chart_recipe'],
          ParamType.String,
          false,
        ),
        chartDosage: deserializeParam(
          data['chart_dosage'],
          ParamType.String,
          false,
        ),
        chartFrequency: deserializeParam(
          data['chart_frequency'],
          ParamType.String,
          false,
        ),
        dog: deserializeStructParam(
          data['dog'],
          ParamType.DataStruct,
          false,
          structBuilder: DogStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DogRecipeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DogRecipeStruct &&
        chartRecipe == other.chartRecipe &&
        chartDosage == other.chartDosage &&
        chartFrequency == other.chartFrequency &&
        dog == other.dog;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([chartRecipe, chartDosage, chartFrequency, dog]);
}

DogRecipeStruct createDogRecipeStruct({
  String? chartRecipe,
  String? chartDosage,
  String? chartFrequency,
  DogStruct? dog,
}) =>
    DogRecipeStruct(
      chartRecipe: chartRecipe,
      chartDosage: chartDosage,
      chartFrequency: chartFrequency,
      dog: dog ?? DogStruct(),
    );
