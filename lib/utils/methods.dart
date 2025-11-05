import 'package:flashcard_app/enums/settings.dart';
import 'package:flashcard_app/pages/flashcards_page.dart';
import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';


loadSession({required BuildContext context, required String topic}){

   Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => FlashcardsPage()));
   Provider.of<FlashcardsNotifier>(context,listen:false)
     .setTopic(topic: topic);
}

extension SettingsToText on Settings{

   String toText(BuildContext context) {
      final l10n = AppLocalizations.of(context);
      if (l10n == null) {
         return _fallbackText();
      }

      switch (this) {
         case Settings.vietnameseFirst:

            return l10n.settingsVietnameseFirst ?? 'Show Vietnamese First';
         case Settings.showTranscription:

            return l10n.settingsShowTranscription ?? 'Show Transcription';
         case Settings.audioOnly:

            return l10n.settingsAudioOnly ?? 'Test Listening';
      }
   }


   String _fallbackText() {
      switch (this) {
         case Settings.vietnameseFirst:
            return 'Show Vietnamese First';
         case Settings.showTranscription:
            return 'Show Transcription';
         case Settings.audioOnly:
            return 'Test Listening';
      }
   }


}
