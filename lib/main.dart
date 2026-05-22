import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'services/finance_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FinanceProvider(),
      child: const WealthIQ(),
    ),
  );
}
