import 'package:path/path.dart';
import 'package:poketra/core/constants/index.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  Future<Database?> get database async {
    _database ??= await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), POKETRA_DATABASE_NAME);
    return await openDatabase(
      path,
      version: POKETRA_DATABASE_VERSION,
      onCreate: _onCreate,
    );
  }
  void _onCreate(db, version) async {
    await db.execute('''
             CREATE TABLE users (
                 user_id INTEGER PRIMARY KEY, 
                 username TEXT, email TEXT, 
                 password TEXT, 
                 profile_local TEXT, 
                 profile_remote TEXT, 
                 created_at TEXT, 
                 updated_at TEXT
             )
          ''');
    await db.execute('');
    await db.execute('''
             CREATE TABLE savings(
                 saving_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 saving_title TEXT,
                 saving_amount INTEGER  DEFAULT 0,
                 saving_author INTEGER,
                 FOREIGN KEY (saving_author) REFERENCES users(user_id) ON DELETE CASCADE 
             )
    ''');

  }

}
