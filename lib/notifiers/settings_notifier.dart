import 'package:flutter/material.dart';
import '../l10n/l10n.dart';
import '../enums/settings.dart';



class SettingsNotifier extends ChangeNotifier{
   Map<Settings, bool> displayOptions = {
     Settings.vietnameseFirst: true,
     Settings.showTranscription: true,
     Settings.audioOnly: false,

   };

   Locale _locale = const Locale('en');

   Locale get locale => _locale;

   updateDisplayOptions({required Settings displayOption, required bool isToggled}){
     displayOptions.update(displayOption, (value) => isToggled);
     print('button ${displayOption.name} = $isToggled');
     notifyListeners();
   }

   resetSettings(){
     displayOptions.update(Settings.vietnameseFirst,(value) => true);
     displayOptions.update(Settings.showTranscription,(value) => true);
     displayOptions.update(Settings.audioOnly,(value) => false);
     _locale = const Locale('en');
     notifyListeners();

   }

   void setLocale(Locale locale) {
     if (!L10n.all.contains(locale)) return;
     _locale = locale;
     print('Language changed to: ${locale.languageCode}');
     notifyListeners();
   }

}