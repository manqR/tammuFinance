class Sales{
  String _salesID;
  int _idUser;
  int _totalQty;
  double _discount_amount;
  double _discount_percentage;
  double _grandTotal;
  DateTime _salesDate;
  int _salesStatus;


  String get salesID => _salesID;
  set salesID(String value) {_salesID = value;}

  int get idUser => _idUser;
  set idUser(int value) {_idUser = value;}

  int get totalQty => _totalQty;
  set totalQty(int value) {_totalQty = value;}

  double get discount_amount => _discount_amount;
  set discount_amount(double value) {_discount_amount = value;}

  double get discount_percentage => _discount_percentage;
  set discount_percentage(double value) {_discount_percentage = value;}

  double get grandTotal => _grandTotal;
  set grandTotal(double value) {_grandTotal = value;}

  DateTime get salesDate => _salesDate;
  set salesDate(DateTime value) {_salesDate = value;}

  int get salesStatus => _salesStatus;
  set salesStatus(int value) {_salesStatus = value;}


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['salesID'] = this._salesID;
    map['idUser'] = _idUser;
    map['totalQty'] = _totalQty;
    map['discount_amount'] = _discount_amount;
    map['discount_percentage'] = _discount_percentage;
    map['grandTotal'] = _grandTotal;
    map['salesDate'] = _salesDate;
    map['salesStatus'] = _salesStatus;

    return map;
  }

}