import 'package:flutter/material.dart';

class FlashcardsNotifier extends ChangeNotifier{

  String topic = "";
  setTopic({required String topic}){
     this.topic = topic;
     notifyListeners();
  }


}