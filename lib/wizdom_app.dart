import 'package:flutter/material.dart';
import 'package:wizdom_app/core/theme/theme.dart';
import 'package:wizdom_app/screens/dashboard/dashboard.dart';

class WizdomApp extends StatelessWidget {
  const WizdomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightThemeMode,
      home: Dashboard(),
    );
  }
}
