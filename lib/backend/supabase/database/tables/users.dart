import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userFullname => getField<String>('user_fullname');
  set userFullname(String? value) => setField<String>('user_fullname', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get contactnumber => getField<String>('contactnumber');
  set contactnumber(String? value) => setField<String>('contactnumber', value);

  String? get userType => getField<String>('user_type');
  set userType(String? value) => setField<String>('user_type', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get userStatus => getField<String>('user_status');
  set userStatus(String? value) => setField<String>('user_status', value);

  int? get otp => getField<int>('otp');
  set otp(int? value) => setField<int>('otp', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);
}
