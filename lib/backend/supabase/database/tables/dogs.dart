import '../database.dart';

class DogsTable extends SupabaseTable<DogsRow> {
  @override
  String get tableName => 'dogs';

  @override
  DogsRow createRow(Map<String, dynamic> data) => DogsRow(data);
}

class DogsRow extends SupabaseDataRow {
  DogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get dogName => getField<String>('dog_name')!;
  set dogName(String value) => setField<String>('dog_name', value);

  String? get dogBirthday => getField<String>('dog_birthday');
  set dogBirthday(String? value) => setField<String>('dog_birthday', value);

  String? get dogAge => getField<String>('dog_age');
  set dogAge(String? value) => setField<String>('dog_age', value);

  String? get dogGender => getField<String>('dog_gender');
  set dogGender(String? value) => setField<String>('dog_gender', value);

  String? get dogNote => getField<String>('dog_note');
  set dogNote(String? value) => setField<String>('dog_note', value);

  int? get weight => getField<int>('weight');
  set weight(int? value) => setField<int>('weight', value);

  String? get dogImageUrl => getField<String>('dog_image_url');
  set dogImageUrl(String? value) => setField<String>('dog_image_url', value);

  String? get dogDescription => getField<String>('dog_description');
  set dogDescription(String? value) =>
      setField<String>('dog_description', value);
}
