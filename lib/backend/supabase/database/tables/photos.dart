import '../database.dart';

class PhotosTable extends SupabaseTable<PhotosRow> {
  @override
  String get tableName => 'photos';

  @override
  PhotosRow createRow(Map<String, dynamic> data) => PhotosRow(data);
}

class PhotosRow extends SupabaseDataRow {
  PhotosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PhotosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get url => getField<String>('url')!;
  set url(String value) => setField<String>('url', value);

  String? get photosAlbumsId => getField<String>('photos_albums_id');
  set photosAlbumsId(String? value) =>
      setField<String>('photos_albums_id', value);

  String? get photosDogId => getField<String>('photos_dog_id');
  set photosDogId(String? value) => setField<String>('photos_dog_id', value);
}
