import '../models/transaction.dart';
import '../models/goal.dart';

class FinanceService {
  List<TransactionModel> transactions = [];
  List<GoalModel> goals = [];

  double get balance {
    double income = 0;
    double expense = 0;

    for (var t in transactions) {
      if (t.isIncome) {
        income += t.amount;
      } else {
        expense += t.amount;
      }
    }

    return income - expense;
  }

  void addTransaction(TransactionModel t) {
    transactions.add(t);
  }

  void addGoal(GoalModel g) {
    goals.add(g);
  }
}
