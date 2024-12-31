import '../database.dart';

class LoansTable extends SupabaseTable<LoansRow> {
  @override
  String get tableName => 'loans';

  @override
  LoansRow createRow(Map<String, dynamic> data) => LoansRow(data);
}

class LoansRow extends SupabaseDataRow {
  LoansRow(super.data);

  @override
  SupabaseTable get table => LoansTable();

  int get loanId => getField<int>('loan_id')!;
  set loanId(int value) => setField<int>('loan_id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  double get interestRate => getField<double>('interest_rate')!;
  set interestRate(double value) => setField<double>('interest_rate', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
