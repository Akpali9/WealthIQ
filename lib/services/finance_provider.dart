import 'package:flutter/material.dart';
import 'finance_service.dart';

class FinanceProvider extends ChangeNotifier {
  final service = FinanceService();

  double balance = 0;
  List transactions = [];
  List goals = [];

  Future<void> loadData() async {
    transactions = await service.getTransactions();
    goals = await service.getGoals();
    balance = await service.getBalance();
    notifyListeners();
  }

  Future<void> addIncome(String title, double amount) async {
    await service.addIncome(title, amount);
    await loadData();
  }

  Future<void> addExpense(String title, double amount) async {
    await service.addExpense(title, amount);
    await loadData();
  }

  Future<void> addGoal(String title, double target) async {
    await service.addGoal(title, target);
    await loadData();
  }
}
