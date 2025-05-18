import '../database.dart';

class AlbumsTable extends SupabaseTable<AlbumsRow> {
  @override
  String get tableName => 'albums';

  @override
  AlbumsRow createRow(Map<String, dynamic> data) => AlbumsRow(data);
}

class AlbumsRow extends SupabaseDataRow {
  AlbumsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlbumsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get albumName => getField<String>('album_name');
  set albumName(String? value) => setField<String>('album_name', value);

  String? get returnUrl => getField<String>('return_url');
  set returnUrl(String? value) => setField<String>('return_url', value);

  DateTime? get uploadDate => getField<DateTime>('upload_date');
  set uploadDate(DateTime? value) => setField<DateTime>('upload_date', value);

  String? get dogId => getField<String>('dog_id');
  set dogId(String? value) => setField<String>('dog_id', value);
}
