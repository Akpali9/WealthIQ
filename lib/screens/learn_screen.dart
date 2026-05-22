import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        Text("Financial Education 📚",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

        SizedBox(height: 20),

        _CourseTile(title: "Wealth Building Basics"),
        _CourseTile(title: "Saving Strategies"),
        _CourseTile(title: "Investment Fundamentals"),
        _CourseTile(title: "Passive Income Systems"),
        _CourseTile(title: "Digital Skills for Income"),
      ],
    );
  }
}

class _CourseTile extends StatelessWidget {
  final String title;
  const _CourseTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF122B4A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }
}
