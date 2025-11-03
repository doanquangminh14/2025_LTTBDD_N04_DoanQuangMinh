import 'package:flashcard_app/configs/constants.dart';
import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';


class TTSButton extends StatefulWidget {
  const TTSButton({super.key});

  @override
  State<TTSButton> createState() => _TTSButtonState();
}

class _TTSButtonState extends State<TTSButton> {

  bool _isTapped = false;
  FlutterTts _tts = FlutterTts();

@override
  void initState() {
    _setUpTts();
    super.initState();
  }

  @override
  void dispose(){
  _tts.stop();
  super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<FlashcardsNotifier>(
      builder: (_,notifier,__) => Expanded(child: IconButton(onPressed: () {
        _runTts(text: notifier.word1.character );
        _isTapped = true;
        setState(() {});
        Future.delayed(Duration(milliseconds: 500), () {
          _isTapped = true;
          setState(() {});
        });
      },
          icon: Icon(Icons.audiotrack,size: 50,color:_isTapped ? ngocnhat : Colors.white,))),
    );
  }

  _setUpTts() async {
    await _tts.setLanguage('en-US');
    await _tts.setSpeechRate(0.40);
  }

  _runTts({required String text}) async{
        await _tts.speak(text);

  }



}
