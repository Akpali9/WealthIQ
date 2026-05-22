import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          const Text(
            "WealthIQ 💰",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Text("Build Wealth. Track Money. Grow Income.",
              style: TextStyle(color: Colors.grey)),

          const SizedBox(height: 20),

          // Balance Card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF122B4A),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Balance", style: TextStyle(color: Colors.white70)),
                SizedBox(height: 10),
                Text("₦0.00",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF00FF88),
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _action("Add Income"),
              _action("Add Expense"),
            ],
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xFF122B4A),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              "📈 Financial Tip: Always invest at least 20% of your income before spending.",
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }

  Widget _action(String title) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFF00FF88),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
