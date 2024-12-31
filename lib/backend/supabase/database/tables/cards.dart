import '../database.dart';

class CardsTable extends SupabaseTable<CardsRow> {
  @override
  String get tableName => 'cards';

  @override
  CardsRow createRow(Map<String, dynamic> data) => CardsRow(data);
}

class CardsRow extends SupabaseDataRow {
  CardsRow(super.data);

  @override
  SupabaseTable get table => CardsTable();

  int get cardId => getField<int>('card_id')!;
  set cardId(int value) => setField<int>('card_id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  String get cardNumber => getField<String>('card_number')!;
  set cardNumber(String value) => setField<String>('card_number', value);

  String? get cardType => getField<String>('card_type');
  set cardType(String? value) => setField<String>('card_type', value);

  DateTime? get expirationDate => getField<DateTime>('expiration_date');
  set expirationDate(DateTime? value) =>
      setField<DateTime>('expiration_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
