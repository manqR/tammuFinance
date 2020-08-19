import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:tammu_finance/DBHelper/mItemDBHelper.dart';
import 'package:tammu_finance/DBHelper/mUserDBHelper.dart';
import 'package:tammu_finance/DBHelper/tSalesDBHelper.dart';


class GeneralDBHelper{
  static GeneralDBHelper _dbHelper;
  static Database _database;

  GeneralDBHelper._createObject();

  factory GeneralDBHelper(){
    if (_dbHelper == null) {
      _dbHelper = GeneralDBHelper._createObject();
    }
    return _dbHelper;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'Tammu.db';
    var todoDatabase = openDatabase(path, version: 3, onCreate: _createDb);
    return todoDatabase;
  }

  void _createDb(Database db, int version) async {
    await db.execute(mItemDBHelper.TABLE_CREATE1);
    await db.execute(mItemDBHelper.TABLE_CREATE2);
    await db.execute(mItemDBHelper.TABLE_CREATE3);
    await db.execute(mUserDBHelper.TABLE_CREATE);
    await db.execute(tSalesDBHelper.TABLE_CREATE1);
    await db.execute(tSalesDBHelper.TABLE_CREATE2);
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }
}