import 'package:flutter/material.dart';
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
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xFF122B4A),
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
