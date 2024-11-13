import 'package:flutter/material.dart';

import 'package:YesNoApp-210820/config/theme/app_theme.dart';
import 'package:YesNoApp-210820/persentation/screens/chat/chast_screen.dart';
import 'package:YesNoApp-210820/persentation/providers/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes - No App (210820)',
      debugShowCheckedModeBanner: false,
      // theme,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const ChastScreen(),
    );
  }
}