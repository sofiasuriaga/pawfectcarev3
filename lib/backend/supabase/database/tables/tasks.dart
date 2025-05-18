import '../database.dart';

class TasksTable extends SupabaseTable<TasksRow> {
  @override
  String get tableName => 'tasks';

  @override
  TasksRow createRow(Map<String, dynamic> data) => TasksRow(data);
}

class TasksRow extends SupabaseDataRow {
  TasksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TasksTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get taskTitle => getField<String>('task_title');
  set taskTitle(String? value) => setField<String>('task_title', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get assignedBy => getField<String>('assigned_by');
  set assignedBy(String? value) => setField<String>('assigned_by', value);

  String? get taskDescription => getField<String>('task_description');
  set taskDescription(String? value) =>
      setField<String>('task_description', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get dateCreated => getField<String>('date_created');
  set dateCreated(String? value) => setField<String>('date_created', value);

  DateTime? get dateCompleted => getField<DateTime>('date_completed');
  set dateCompleted(DateTime? value) =>
      setField<DateTime>('date_completed', value);

  String? get tasksDogId => getField<String>('tasks_dog_id');
  set tasksDogId(String? value) => setField<String>('tasks_dog_id', value);

  String? get dogName => getField<String>('dog_name');
  set dogName(String? value) => setField<String>('dog_name', value);

  String? get lastFollowUpAt => getField<String>('last_follow_up_at');
  set lastFollowUpAt(String? value) =>
      setField<String>('last_follow_up_at', value);

  bool? get allUsers => getField<bool>('all_users');
  set allUsers(bool? value) => setField<bool>('all_users', value);
}
