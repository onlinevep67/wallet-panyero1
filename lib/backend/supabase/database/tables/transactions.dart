import '../database.dart';

class TransactionsTable extends SupabaseTable<TransactionsRow> {
  @override
  String get tableName => 'transactions';

  @override
  TransactionsRow createRow(Map<String, dynamic> data) => TransactionsRow(data);
}

class TransactionsRow extends SupabaseDataRow {
  TransactionsRow(super.data);

  @override
  SupabaseTable get table => TransactionsTable();

  int get transactionId => getField<int>('transaction_id')!;
  set transactionId(int value) => setField<int>('transaction_id', value);

  int get senderId => getField<int>('sender_id')!;
  set senderId(int value) => setField<int>('sender_id', value);

  int get receiverId => getField<int>('receiver_id')!;
  set receiverId(int value) => setField<int>('receiver_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  DateTime? get transactionDate => getField<DateTime>('transaction_date');
  set transactionDate(DateTime? value) =>
      setField<DateTime>('transaction_date', value);
}
