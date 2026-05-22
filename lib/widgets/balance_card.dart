import 'package:flutter/material.dart';
import '../utils/colors.dart';

class BalanceCard extends StatelessWidget {
  final double balance;

  const BalanceCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Total Balance",
              style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 10),
          Text(
            "₦${balance.toStringAsFixed(2)}",
            style: const TextStyle(
              fontSize: 28,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
