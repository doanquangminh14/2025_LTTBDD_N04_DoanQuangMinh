import 'package:flashcard_app/components/app/custom_appbar.dart';
import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flashcard_app/notifiers/settings_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../configs/constants.dart';
import '../enums/settings.dart';
import '../settings/settings_title.dart';
import '../settings/switch_botton.dart';
import 'package:flashcard_app/l10n/app_localizations.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsNotifier>(
      builder:(_,notifier,__) {
        bool audioFirst = notifier.displayOptions.entries.firstWhere((element) =>
       element.key == Settings.audioOnly ).value;



        return Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(kAppBarHeight),
            child: CustomAppBar()),
        body: Stack(
          children: [
            Column(
              children: [
                SwitchButton(disabled: audioFirst, displayOption: Settings.vietnameseFirst,),
                SwitchButton(displayOption:  Settings.showTranscription,),
                SwitchButton(displayOption:  Settings.audioOnly,),



                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)?.settingsLanguage ?? 'Language',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                DropdownButton<Locale>(
                  value: notifier.locale,
                  items: const [
                    DropdownMenuItem(
                      value: Locale('en'),
                      child: Text('English 🇬🇧'),
                    ),
                    DropdownMenuItem(
                      value: Locale('vi'),
                      child: Text('Tiếng Việt 🇻🇳'),
                    ),
                  ],
                  onChanged: (locale) {
                    if (locale != null) {
                      notifier.setLocale(locale);
                    }
                  },
                ),





              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SettingsTile(

                  title: AppLocalizations.of(context)?.settingsReset ?? 'Reset',
                  icon: Icon(Icons.refresh),
                  callback: () {
                    notifier.resetSettings();
                  },
                ),
                SettingsTile(

                  title: AppLocalizations.of(context)?.settingsExit ?? 'Exit App',
                  icon: Icon(Icons.exit_to_app),
                  callback: () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  },
                ),
              ],
            )
          ],
        ),
      );
      },
    );
  }
}


