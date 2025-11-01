import 'package:flashcard_app/enums/slide_direction.dart';
import 'package:flutter/material.dart';

class FlashcardsNotifier extends ChangeNotifier{

  String topic = "";
  setTopic({required String topic}){
     this.topic = topic;
     notifyListeners();
  }

SlideDirection swipedDirection = SlideDirection.none;

  bool flipCard1 = false, flipCard2 = false, swipeCard2 = false;

  runFlipCard1(){
    flipCard1 = true;
    notifyListeners();
  }

runFlipCard2(){
    flipCard2 = true;
    notifyListeners();
  }

runSwipeCard2({required SlideDirection direction}){
  swipedDirection = direction;
  swipeCard2 = true;
  notifyListeners();
}

}