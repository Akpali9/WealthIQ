import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/finance_provider.dart';
import 'dashboard_screen.dart';
import 'goals_screen.dart';
import 'learn_screen.dart';
import 'mentorship_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      Provider.of<FinanceProvider>(context, listen: false).loadData();
    });
  }

  final screens = const [
    DashboardScreen(),
    GoalsScreen(),
    LearnScreen(),
    MentorshipScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        selectedItemColor: const Color(0xFF00FF88),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: "Goals"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Learn"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Mentor"),
        ],
      ),
    );
  }
}
