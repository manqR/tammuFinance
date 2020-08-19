class Item{
  int _itemCategory;
  String _itemName;
  String _itemCode;
  String _itemPict;


  String get itemCode => _itemCode;
  set itemCode(String value) {_itemCode = value;}

  int get itemCategory => _itemCategory;
  set itemCategory(int value) {_itemCategory = value;}

  String get itemName => _itemName;
  set itemName(String value) {_itemName = value;}

  String get itemPict => _itemPict;
  set itemPict(String value) {_itemPict = value;}


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['itemCategory'] = this._itemCategory;
    map['itemName'] = _itemName;
    map['itemCode'] = _itemCode;
    map['itemPict'] = _itemPict;
    return map;
  }
}
