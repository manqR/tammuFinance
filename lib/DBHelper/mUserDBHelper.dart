import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:tammu_finance/models/mUsers.dart';



class mUserDBHelper {
  static mUserDBHelper _dbHelper;
  static Database _database;

  mUserDBHelper._createObject();

  factory mUserDBHelper(){
    if (_dbHelper == null) {
      _dbHelper = mUserDBHelper._createObject();
    }
    return _dbHelper;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'Tammu.db';
    var todoDatabase = openDatabase(path, version: 3);
    return todoDatabase;
  }


  static String TABLE_NAME = "mUser";
  static String TABLE_CREATE = "CREATE TABLE "
      + TABLE_NAME + "( " +
      "idUser INTEGER PRIMARY KEY AUTOINCREMENT, " +
      "userName VARCHAR(50), " +
      "name VARCHAR(50), " +
      "email VARCHAR(50), " +
      "password VARCHAR(50), " +
      "balanced NUMERIC(14,2), " +
      "unpaid NUMERIC(14,2), " +
      "joinDate DateTime, " +
      "passcode VARCHAR(50), " +
      "fingerPrint VARCHAR(50), " +
      "deviceID VARCHAR(50), " +
      "token VARCHAR(50), " +
      "status INTEGER " +
      ")";


//
//  void _createDb(Database db, int version) async {
//    await db.execute(TABLE_CREATE);
//  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }
}