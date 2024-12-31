import '../database.dart';

class QrCodesTable extends SupabaseTable<QrCodesRow> {
  @override
  String get tableName => 'qr_codes';

  @override
  QrCodesRow createRow(Map<String, dynamic> data) => QrCodesRow(data);
}

class QrCodesRow extends SupabaseDataRow {
  QrCodesRow(super.data);

  @override
  SupabaseTable get table => QrCodesTable();

  int get qrCodeId => getField<int>('qr_code_id')!;
  set qrCodeId(int value) => setField<int>('qr_code_id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  String get qrCodeData => getField<String>('qr_code_data')!;
  set qrCodeData(String value) => setField<String>('qr_code_data', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
