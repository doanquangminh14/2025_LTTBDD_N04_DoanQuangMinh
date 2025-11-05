import 'package:flashcard_app/configs/themes.dart';
import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flashcard_app/notifiers/settings_notifier.dart';
import 'package:flashcard_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flashcard_app/pages/home_page.dart';
import 'package:provider/provider.dart';
//import 'configs/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'l10n/app_localizations.dart';
import 'l10n/l10n.dart';

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
    return Consumer<SettingsNotifier>(
        builder: (context, settingsNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'English FlashCard',
            theme: appTheme,

            supportedLocales: L10n.all,


            locale: settingsNotifier.locale,


            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: const LoginPage(),
          );
        },
    );
  }
}
