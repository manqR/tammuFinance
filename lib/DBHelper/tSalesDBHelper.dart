import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';



class tSalesDBHelper {
  static tSalesDBHelper _dbHelper;
  static Database _database;

  tSalesDBHelper._createObject();

  factory tSalesDBHelper(){
    if (_dbHelper == null) {
      _dbHelper = tSalesDBHelper._createObject();
    }
    return _dbHelper;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'Tammu.db';
    var todoDatabase = openDatabase(path, version: 3);
    return todoDatabase;
  }


  static String TABLE_NAME1 = "tSales";
  static String TABLE_NAME2 = "tSalesDetail";

  String _salesID;
  int _idUser;
  int _totalQty;
  double _discount_amount;
  double _discount_percentage;
  double _grandTotal;
  DateTime _salesDate;
  int _;

  static String TABLE_CREATE1 = "CREATE TABLE "
      + TABLE_NAME1 + "( " +
      "salesID VARCHAR(50), " +
      "idUser INTEGER, " +
      "totalQty INTEGER, " +
      "discount_amount NUMERIC(14,2), " +
      "discount_percentage NUMERIC(14,2), " +
      "grandTotal NUMERIC(14,2), " +
      "salesDate DateTime, " +
      "salesStatus INTEGER " +
      ")";


  static String TABLE_CREATE2 = "CREATE TABLE "
      + TABLE_NAME2 + "( " +
      "sequence INTEGER, " +
      "itemPrice NUMERIC(14,2), " +
      "salesCode VARCHAR(50), " +
      "itemCode VARCHAR(50), " +
      "itemVariant INTEGER, " +
      "qty INTEGER " +
      ")";
//
//
//  void _createDb(Database db, int version) async {
//    await db.execute(TABLE_CREATE1);
//    await db.execute(TABLE_CREATE2);
//  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }
}