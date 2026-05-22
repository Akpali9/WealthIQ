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
        scaffoldBackgroundColor: const Color(0xFF0B1F3A),
      ),
      home: const HomeScreen(),
    );
  }
}
