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
             CREATE TABLE IF NOT EXISTS users (
                 user_id INTEGER PRIMARY KEY, 
                 username TEXT, email TEXT, 
                 password TEXT, 
                 profile_local TEXT, 
                 profile_remote TEXT, 
                 created_at TEXT, 
                 updated_at TEXT
             )
          ''');
    await db.execute('''
            CREATE TABLE IF NOT EXISTS incomes(
                income_id INTEGER PRIMARY KEY,
                balance INTEGER DEFAULT 0,
                created_at TEXT,
                updated_at TEXT,
                income_author INTEGER,
                FOREIGN KEY (income_author) REFERENCES users(user_id) ON DELETE CASCADE 
            )
    ''');
    await db.execute('''
            CREATE TABLE IF NOT EXISTS goals(
                goal_id INTEGER PRIMARY KEY,
                goal_amount INTEGER DEFAULT 0,
                goal_progress INTEGER DEFAULT 0,
                goal_name TEXT,
                goal_description TEXT,
                goal_due_date TEXT,
                created_at TEXT,
                updated_at TEXT,
                income_author INTEGER,
                FOREIGN KEY (income_author) REFERENCES users(user_id) ON DELETE CASCADE 
            )
    ''');
    await db.execute('''
             CREATE TABLE IF NOT EXISTS savings(
                 saving_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 saving_title TEXT,
                 saving_amount INTEGER  DEFAULT 0,
                 saving_author INTEGER,
                 created_at TEXT,
                 updated_at TEXT,
                 FOREIGN KEY (saving_author) REFERENCES users(user_id) ON DELETE CASCADE 
             )
    ''');
    await db.execute('''
             CREATE TABLE IF NOT EXISTS tags(
                 tag_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 tag_designation TEXT,
                 tag_icon_name TEXT,
                 tag_saving INTEGER,
                 created_at TEXT,
                 updated_at TEXT,
                 FOREIGN KEY (tag_saving) REFERENCES savings(saving_id) ON DELETE CASCADE 
             )
    ''');
    await db.execute('''
             CREATE TABLE IF NOT EXISTS budgets(
                 budget_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 budget_amount INTEGER,
                 tag_icon_name TEXT,
                 tag_saving INTEGER,
                 budget_balance INTEGER DEFAULT 0,
                 budget_start_date TEXT,
                 budget_end_date TEXT,
                 budget_author INTEGER,
                 created_at TEXT,
                 updated_at TEXT,
                 FOREIGN KEY (budget_author) REFERENCES users(user_id) ON DELETE CASCADE 
             )
    ''');
    await db.execute('''
             CREATE TABLE IF NOT EXISTS expenses(
                 expense_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 note TEXT,
                 expense_amount INTEGER,
                 expense_budget INTEGER,
                 expense_category INTEGER,
                 created_at TEXT,
                 updated_at TEXT,
                 FOREIGN KEY (expense_budget) REFERENCES budgets(budget_id) ON DELETE CASCADE,
                 FOREIGN KEY (expense_category) REFERENCES categories(category_id) ON DELETE CASCADE 
             )
    ''');
    await db.execute('''
             CREATE TABLE IF NOT EXISTS categories(
                 category_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 category_designation TEXT,
                 created_at TEXT,
                 updated_at TEXT,
             )
    ''');
  }
  Future<int?> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db?.insert("users", row);
  }

  // Future<User> getUser(String user, String password) async {
  //   Database db = await instance.database;
  //
  //   final res = await db.rawQuery(
  //       "SELECT * FROM $table WHERE username = '$user' AND password = '$password'");
  //
  //   if (res.isNotEmpty) {
  //     User user = User.fromMap(res[0]);
  //     return user;
  //   }
  //   return User('', '');
  // }
}