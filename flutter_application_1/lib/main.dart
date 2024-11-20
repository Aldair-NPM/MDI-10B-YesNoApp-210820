import 'package:YesNoApp_210820/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:YesNoApp_210820/config/theme/app_theme.dart';
import 'package:YesNoApp_210820/persentation/providers/chat_provider.dart';
import 'package:YesNoApp_210820/persentation/screens/chat/chast_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider() )
      ],
      child: MaterialApp(
        title: 'Yes No App (210820)',
        debugShowCheckedModeBanner: false,
        theme: AppTheme( selectedColor: 0 ).theme(),
        home: const ChastScreen()
      ),
    );
  }
}


