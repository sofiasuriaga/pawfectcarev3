import '../database.dart';

class FeedChartsTable extends SupabaseTable<FeedChartsRow> {
  @override
  String get tableName => 'feed_charts';

  @override
  FeedChartsRow createRow(Map<String, dynamic> data) => FeedChartsRow(data);
}

class FeedChartsRow extends SupabaseDataRow {
  FeedChartsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedChartsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get chartRecipe => getField<String>('chart_recipe')!;
  set chartRecipe(String value) => setField<String>('chart_recipe', value);

  String get chartDosage => getField<String>('chart_dosage')!;
  set chartDosage(String value) => setField<String>('chart_dosage', value);

  String get chartFrequency => getField<String>('chart_frequency')!;
  set chartFrequency(String value) =>
      setField<String>('chart_frequency', value);

  String? get feedChartsDogId => getField<String>('feed_charts_dog_id');
  set feedChartsDogId(String? value) =>
      setField<String>('feed_charts_dog_id', value);
}
