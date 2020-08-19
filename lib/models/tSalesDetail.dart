class SalesDetail{
  int _sequence;
  double _itemPrice;
  String _salesCode;
  String _itemCode;
  int _itemVariant;
  int _qty;


  String get salesCode => _salesCode;
  set salesCode(String value) {_salesCode = value;}

  String get itemCode => _itemCode;
  set itemCode(String value) {_itemCode = value;}

  int get itemVariant => _itemVariant;
  set itemVariant(int value) {_itemVariant = value;}

  int get qty => _qty;
  set qty(int value) {_qty = value;}

  double get itemPrice => _itemPrice;
  set itemPrice(double value) {_itemPrice = value;}


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['sequence'] = this._sequence;
    map['itemPrice'] = _itemPrice;
    map['salesCode'] = _salesCode;
    map['itemCode'] = _itemCode;
    map['itemVariant'] = _itemVariant;
    map['qty'] = _qty;

    return map;
  }
}