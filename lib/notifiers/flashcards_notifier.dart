import 'package:flutter/material.dart';

class FlashcardsNotifier extends ChangeNotifier{

  String topic = "";
  setTopic({required String topic}){
     this.topic = topic;
     notifyListeners();
  }

  bool flipCard1 = false, flipCard2 = false;

  runFlipCard1(){
    flipCard1 = true;
    notifyListeners();
  }

runFlipCard2(){
    flipCard2 = true;
    notifyListeners();
  }

}