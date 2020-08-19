class mItemCategory {
  int _idCategory;
  String _categoryName;

  int get idCategory => _idCategory;
  set idCategory(int value) {_idCategory = value;}

  String get categoryName => _categoryName;
  set categoryName(String value) {_categoryName = value;}


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['idCategory'] = this._idCategory;
    map['categoryName'] = _categoryName;
    return map;
  }
}