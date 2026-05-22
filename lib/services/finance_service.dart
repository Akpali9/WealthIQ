import 'database_helper.dart';

class FinanceService {
  final db = DatabaseHelper.instance;

  // ================= TRANSACTIONS =================

  Future<void> addIncome(String title, double amount) async {
    await db.insertTransaction({
      'title': title,
      'amount': amount,
      'type': 'income',
      'date': DateTime.now().toIso8601String(),
    });
  }

  Future<void> addExpense(String title, double amount) async {
    await db.insertTransaction({
      'title': title,
      'amount': amount,
      'type': 'expense',
      'date': DateTime.now().toIso8601String(),
    });
  }

  Future<List<Map<String, dynamic>>> getTransactions() {
    return db.getTransactions();
  }

  Future<double> getBalance() async {
    final data = await db.getTransactions();

    double income = 0;
    double expense = 0;

    for (var item in data) {
      if (item['type'] == 'income') {
        income += item['amount'];
      } else {
        expense += item['amount'];
      }
    }

    return income - expense;
  }

  // ================= GOALS =================

  Future<void> addGoal(String title, double target) async {
    await db.insertGoal({
      'title': title,
      'targetAmount': target,
      'savedAmount': 0,
      'createdAt': DateTime.now().toIso8601String(),
    });
  }

  Future<List<Map<String, dynamic>>> getGoals() {
    return db.getGoals();
  }

  Future<void> updateGoalProgress(int id, double saved) async {
    await db.updateGoal(id, saved);
  }
}
