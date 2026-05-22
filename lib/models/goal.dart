class GoalModel {
  final String id;
  final String title;
  final double targetAmount;
  double savedAmount;
  final DateTime createdAt;

  GoalModel({
    required this.id,
    required this.title,
    required this.targetAmount,
    this.savedAmount = 0,
    required this.createdAt,
  });

  double get progress {
    if (targetAmount == 0) return 0;
    return savedAmount / targetAmount;
  }

  bool get isCompleted => savedAmount >= targetAmount;

  void addSavings(double amount) {
    savedAmount += amount;
  }
}
