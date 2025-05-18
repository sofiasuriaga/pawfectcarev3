// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DogStruct extends BaseStruct {
  DogStruct({
    int? weight,
    String? dogAge,
    String? dogName,
    String? dogGender,
    String? dogBirthday,
    String? feedChartsDogId,
    String? id,
    String? dogDescription,
  })  : _weight = weight,
        _dogAge = dogAge,
        _dogName = dogName,
        _dogGender = dogGender,
        _dogBirthday = dogBirthday,
        _feedChartsDogId = feedChartsDogId,
        _id = id,
        _dogDescription = dogDescription;

  // "weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  set weight(int? val) => _weight = val;

  void incrementWeight(int amount) => weight = weight + amount;

  bool hasWeight() => _weight != null;

  // "dog_age" field.
  String? _dogAge;
  String get dogAge => _dogAge ?? '';
  set dogAge(String? val) => _dogAge = val;

  bool hasDogAge() => _dogAge != null;

  // "dog_name" field.
  String? _dogName;
  String get dogName => _dogName ?? '';
  set dogName(String? val) => _dogName = val;

  bool hasDogName() => _dogName != null;

  // "dog_gender" field.
  String? _dogGender;
  String get dogGender => _dogGender ?? '';
  set dogGender(String? val) => _dogGender = val;

  bool hasDogGender() => _dogGender != null;

  // "dog_birthday" field.
  String? _dogBirthday;
  String get dogBirthday => _dogBirthday ?? '';
  set dogBirthday(String? val) => _dogBirthday = val;

  bool hasDogBirthday() => _dogBirthday != null;

  // "feed_charts_dog_id" field.
  String? _feedChartsDogId;
  String get feedChartsDogId => _feedChartsDogId ?? '';
  set feedChartsDogId(String? val) => _feedChartsDogId = val;

  bool hasFeedChartsDogId() => _feedChartsDogId != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "dog_description" field.
  String? _dogDescription;
  String get dogDescription => _dogDescription ?? '';
  set dogDescription(String? val) => _dogDescription = val;

  bool hasDogDescription() => _dogDescription != null;

  static DogStruct fromMap(Map<String, dynamic> data) => DogStruct(
        weight: castToType<int>(data['weight']),
        dogAge: data['dog_age'] as String?,
        dogName: data['dog_name'] as String?,
        dogGender: data['dog_gender'] as String?,
        dogBirthday: data['dog_birthday'] as String?,
        feedChartsDogId: data['feed_charts_dog_id'] as String?,
        id: data['id'] as String?,
        dogDescription: data['dog_description'] as String?,
      );

  static DogStruct? maybeFromMap(dynamic data) =>
      data is Map ? DogStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'weight': _weight,
        'dog_age': _dogAge,
        'dog_name': _dogName,
        'dog_gender': _dogGender,
        'dog_birthday': _dogBirthday,
        'feed_charts_dog_id': _feedChartsDogId,
        'id': _id,
        'dog_description': _dogDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'weight': serializeParam(
          _weight,
          ParamType.int,
        ),
        'dog_age': serializeParam(
          _dogAge,
          ParamType.String,
        ),
        'dog_name': serializeParam(
          _dogName,
          ParamType.String,
        ),
        'dog_gender': serializeParam(
          _dogGender,
          ParamType.String,
        ),
        'dog_birthday': serializeParam(
          _dogBirthday,
          ParamType.String,
        ),
        'feed_charts_dog_id': serializeParam(
          _feedChartsDogId,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'dog_description': serializeParam(
          _dogDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static DogStruct fromSerializableMap(Map<String, dynamic> data) => DogStruct(
        weight: deserializeParam(
          data['weight'],
          ParamType.int,
          false,
        ),
        dogAge: deserializeParam(
          data['dog_age'],
          ParamType.String,
          false,
        ),
        dogName: deserializeParam(
          data['dog_name'],
          ParamType.String,
          false,
        ),
        dogGender: deserializeParam(
          data['dog_gender'],
          ParamType.String,
          false,
        ),
        dogBirthday: deserializeParam(
          data['dog_birthday'],
          ParamType.String,
          false,
        ),
        feedChartsDogId: deserializeParam(
          data['feed_charts_dog_id'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        dogDescription: deserializeParam(
          data['dog_description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DogStruct &&
        weight == other.weight &&
        dogAge == other.dogAge &&
        dogName == other.dogName &&
        dogGender == other.dogGender &&
        dogBirthday == other.dogBirthday &&
        feedChartsDogId == other.feedChartsDogId &&
        id == other.id &&
        dogDescription == other.dogDescription;
  }

  @override
  int get hashCode => const ListEquality().hash([
        weight,
        dogAge,
        dogName,
        dogGender,
        dogBirthday,
        feedChartsDogId,
        id,
        dogDescription
      ]);
}

DogStruct createDogStruct({
  int? weight,
  String? dogAge,
  String? dogName,
  String? dogGender,
  String? dogBirthday,
  String? feedChartsDogId,
  String? id,
  String? dogDescription,
}) =>
    DogStruct(
      weight: weight,
      dogAge: dogAge,
      dogName: dogName,
      dogGender: dogGender,
      dogBirthday: dogBirthday,
      feedChartsDogId: feedChartsDogId,
      id: id,
      dogDescription: dogDescription,
    );
