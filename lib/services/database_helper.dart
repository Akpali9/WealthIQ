import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('wealthiq.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    // TRANSACTIONS TABLE
    await db.execute('''
      CREATE TABLE transactions (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        amount REAL NOT NULL,
        type TEXT NOT NULL,
        date TEXT NOT NULL
      )
    ''');

    // GOALS TABLE
    await db.execute('''
      CREATE TABLE goals (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        targetAmount REAL NOT NULL,
        savedAmount REAL NOT NULL,
        createdAt TEXT NOT NULL
      )
    ''');
  }

  // ================= TRANSACTIONS =================

  Future<int> insertTransaction(Map<String, dynamic> row) async {
    final db = await instance.database;
    return await db.insert('transactions', row);
  }

  Future<List<Map<String, dynamic>>> getTransactions() async {
    final db = await instance.database;
    return await db.query('transactions', orderBy: 'id DESC');
  }

  Future<int> deleteTransaction(int id) async {
    final db = await instance.database;
    return await db.delete(
      'transactions',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // ================= GOALS =================

  Future<int> insertGoal(Map<String, dynamic> row) async {
    final db = await instance.database;
    return await db.insert('goals', row);
  }

  Future<List<Map<String, dynamic>>> getGoals() async {
    final db = await instance.database;
    return await db.query('goals', orderBy: 'id DESC');
  }

  Future<int> updateGoal(int id, double savedAmount) async {
    final db = await instance.database;
    return await db.update(
      'goals',
      {'savedAmount': savedAmount},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
