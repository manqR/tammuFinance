import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:tammu_finance/models/mItem.dart';
import 'package:tammu_finance/models/mItemCategory.dart';
import 'package:tammu_finance/models/mItemVariant.dart';


class mItemDBHelper{
  static mItemDBHelper _dbHelper;
  static Database _database;

  mItemDBHelper._createObject();

  factory mItemDBHelper(){
    if (_dbHelper == null) {
      _dbHelper = mItemDBHelper._createObject();
    }
    return _dbHelper;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'Tammu.db';
    var todoDatabase = openDatabase(path, version: 3);
    return todoDatabase;
  }

  static  String TABLE_NAME1="mItem";
  static  String TABLE_NAME2="mItemCategory";
  static  String TABLE_NAME3="mItemVariant";

  static String TABLE_CREATE1 = "CREATE TABLE "
    + TABLE_NAME1 + "( " +
      "itemCategory INTEGER, " +
      "itemName VARCHAR(50), "+
      "itemCode VARCHAR(50), "+
      "itemPict TEXT " +
    ")";

  static String TABLE_CREATE2 = "CREATE TABLE "
      + TABLE_NAME2 + "( " +
        "idCategory INTEGER, " +
        "categoryName VARCHAR(50) "+
      ")";

  static String TABLE_CREATE3 = "CREATE TABLE "
      + TABLE_NAME3 + "( " +
      "itemVariant INTEGER, " +
      "itemCode VARCHAR(50), "+
      "itemSize INTEGER, " +
      "itemPrice NUMERIC(14,2), "+
      "itemStock INTEGER " +
      ")";

//
//  void _createDb(Database db, int version) async {
//    await db.execute(TABLE_CREATE1);
//    await db.execute(TABLE_CREATE2);
//    await db.execute(TABLE_CREATE3);
//  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }
}