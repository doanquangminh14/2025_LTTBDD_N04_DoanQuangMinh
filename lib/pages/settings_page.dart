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

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsNotifier>(
      builder:(_,notifier,__) => Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(kAppBarHeight),
            child: CustomAppBar()),
        body: Stack(
          children: [
            Column(
              children: [
                SwitchButton(displayOption:  Settings.vietnameseFirst,),
                SwitchButton(displayOption:  Settings.showTranscription,),
                SwitchButton(displayOption:  Settings.audioOnly,),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SettingsTile(title: 'Reset', icon: Icon(Icons.refresh),callback: (){
                  notifier.resetSettings();
                },),
                SettingsTile(title: 'Exit App', icon: Icon(Icons.exit_to_app),callback: (){
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },),
              ],
            )
          ],
        ),
      ),
    );
  }
}


