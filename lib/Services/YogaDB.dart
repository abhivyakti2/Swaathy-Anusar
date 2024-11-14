import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:yoga_app/Models/model.dart';

class YogaDatabase {
  static final YogaDatabase instance = YogaDatabase._init();
  static Database? _database;
  YogaDatabase._init();

  Future<Database> _initalizeDB(String filepath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filepath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initalizeDB("YogaStepsDB.db");
    return _database;
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    // id , bool(Seconds) , text

    await db.execute('''
    CREATE TABLE BeginnerBasics(
   ${YogaModel.IDName} $idType,
   ${YogaModel.YogaName} $textType,
   ${YogaModel.ImageName} $textType,
   ${YogaModel.SecondsOrNot} $boolType
   ),
   
    ''');
  }
}
