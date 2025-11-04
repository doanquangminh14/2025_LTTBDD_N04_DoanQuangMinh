import 'package:flashcard_app/configs/themes.dart';
import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flashcard_app/notifiers/settings_notifier.dart';
import 'package:flashcard_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flashcard_app/pages/home_page.dart';
import 'package:provider/provider.dart';
//import 'configs/themes.dart';

void main() {
  runApp(MultiProvider(
  providers:[
      ChangeNotifierProvider(create: (_) => FlashcardsNotifier()),
      ChangeNotifierProvider(create: (_) => SettingsNotifier())
      ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'English FlashCard',
      theme: appTheme,
      home: const LoginPage(),
    );
  }
}
