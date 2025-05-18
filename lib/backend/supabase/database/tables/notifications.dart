import '../database.dart';

class NotificationsTable extends SupabaseTable<NotificationsRow> {
  @override
  String get tableName => 'notifications';

  @override
  NotificationsRow createRow(Map<String, dynamic> data) =>
      NotificationsRow(data);
}

class NotificationsRow extends SupabaseDataRow {
  NotificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get action => getField<String>('action')!;
  set action(String value) => setField<String>('action', value);

  String get targetType => getField<String>('target_type')!;
  set targetType(String value) => setField<String>('target_type', value);

  String get targetId => getField<String>('target_id')!;
  set targetId(String value) => setField<String>('target_id', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);
}
