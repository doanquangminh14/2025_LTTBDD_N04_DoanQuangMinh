import 'package:flutter/material.dart';

import '../enums/settings.dart';

class SettingsNotifier extends ChangeNotifier{
   Map<Settings, bool> displayOptions = {
     Settings.vietnameseFirst: true,
     Settings.showTranscription: true,
     Settings.audioOnly: false,
     //Settings.information: false,
   };


   updateDisplayOptions({required Settings displayOption, required bool isToggled}){
     displayOptions.update(displayOption, (value) => isToggled);
     print('button ${displayOption.name} = $isToggled');
     notifyListeners();
   }

   resetSettings(){
     displayOptions.update(Settings.vietnameseFirst,(value) => true);
     displayOptions.update(Settings.showTranscription,(value) => true);
     displayOptions.update(Settings.audioOnly,(value) => false);
     notifyListeners();

   }

}