class mUser{
  int _idUser;
  String _userName;
  String _name;
  String _email;
  String _password;
  double _balanced;
  double _unpaid;
  DateTime _joinDate;
  String _passcode;
  String _fingerPrint;
  String _deviceID;
  String _token;
  int _status;


  String get userName => _userName;
  set userName(String value) {_userName = value;}

  String get name => _name;
  set name(String value) {_name = value;}

  String get email => _email;
  set email(String value) {_email = value;}

  String get password => _password;
  set password(String value) {_password = value;}

  int get status => _status;
  set status(int value) {_status = value;}

  double get balanced => _balanced;
  set balanced(double value) {_balanced = value;}

  double get unpaid => _unpaid;
  set unpaid(double value) {_unpaid = value;}

  DateTime get joinDate => _joinDate;
  set joinDate(DateTime value) {_joinDate = value;}

  String get passcode => _passcode;
  set passcode(String value) {_passcode = value;}

  String get fingerPrint => _fingerPrint;
  set fingerPrint(String value) {_fingerPrint = value;}

  String get deviceID => _deviceID;
  set deviceID(String value) {_deviceID = value;}

  String get token => _token;
  set token(String value) {_token = value;}



  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['idUser'] = this._idUser;
    map['userName'] = _userName;
    map['name'] = _name;
    map['email'] = _email;
    map['password'] = _password;
    map['balanced'] = _balanced;
    map['unpaid'] = _unpaid;
    map['joinDate'] = _joinDate;
    map['passcode'] = _passcode;
    map['fingerPrint'] = _fingerPrint;
    map['deviceID'] = _deviceID;
    map['token'] = _token;
    map['status'] = _status;
    return map;
  }


}