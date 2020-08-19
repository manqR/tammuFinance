class ItemVariant{

  int _itemVariant;
  String _itemCode;
  int _itemSize;
  double _itemPrice;
  int _itemStock;



  int get itemVariant => _itemVariant;
  set itemVariant(int value) {_itemVariant = value;}

  String get itemCode => _itemCode;
  set itemCode(String value) {_itemCode = value;}

  int get itemSize => _itemSize;
  set itemSize(int value) {_itemSize = value;}

  double get itemPrice => _itemPrice;
  set itemPrice(double value) {_itemPrice = value;}

  int get itemStock => _itemStock;
  set itemStock(int value) {_itemStock = value;}


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['itemVariant'] = this._itemVariant;
    map['itemCode'] = _itemCode;
    map['itemSize'] = _itemSize;
    map['itemPrice'] = _itemPrice;
    map['itemStock'] = _itemStock;
    return map;
  }

}