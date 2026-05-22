import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class WealthIQ extends StatelessWidget {
  const WealthIQ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WealthIQ',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF00FF88),
        scaffoldBackgroundColor: const Color(0xFF0B1F3A),
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}
