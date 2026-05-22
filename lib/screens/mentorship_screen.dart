import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MentorshipScreen extends StatelessWidget {
  const MentorshipScreen({super.key});

  void openWhatsApp() async {
    final url = Uri.parse("https://wa.me/+2347033816351");
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00FF88),
          padding: const EdgeInsets.all(15),
        ),
        onPressed: openWhatsApp,
        child: const Text(
          "Talk to Mentor on WhatsApp",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
