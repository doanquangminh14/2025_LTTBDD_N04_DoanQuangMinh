import 'package:flashcard_app/components/app/custom_appbar.dart';
import 'package:flashcard_app/notifiers/settings_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configs/constants.dart';
import '../enums/settings.dart';
import '../settings/switch_botton.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(kAppBarHeight),
          child: CustomAppBar()),
      body: Column(
        children: [
          SwitchButton(displayOption:  Settings.vietnameseFirst,),
          SwitchButton(displayOption:  Settings.showTranscription,),
          SwitchButton(displayOption:  Settings.audioOnly,),
        ],
      ),
    );
  }
}


