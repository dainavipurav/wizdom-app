import 'package:flutter/material.dart';
import 'package:wizdom_app/core/theme/theme.dart';
import 'package:wizdom_app/home/home.dart';

class WizdomApp extends StatelessWidget {
  const WizdomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightThemeMode,
      home: Home(),
    );
  }
}
