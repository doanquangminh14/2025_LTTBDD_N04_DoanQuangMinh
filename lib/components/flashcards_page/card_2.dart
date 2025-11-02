import 'package:flashcard_app/animations/half_flip_animation.dart';
import 'package:flashcard_app/animations/slide_animation.dart';
import 'package:flashcard_app/enums/slide_direction.dart';
import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Card2 extends StatelessWidget {
  const Card2({
    super.key,
    
  });



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<FlashcardsNotifier>(
      builder:(_,notifier,__) => GestureDetector(
        onHorizontalDragEnd:(details){
          if(details.primaryVelocity! > 100){
            notifier.runSwipeCard2 (direction: SlideDirection.leftAway);
            notifier.runSlideCard1();
            notifier.setIgnoreTouch(ignore: true);
          }
          if(details.primaryVelocity! < -100){
            notifier.runSwipeCard2 (direction: SlideDirection.rightAway);
             notifier.runSlideCard1();
             notifier.setIgnoreTouch(ignore: true);
          }
        } ,
        child: HalfFlipAnimation(
          animate:notifier.flipCard2,
          reset: notifier.resetFlipCard2,
          flipFromHalfWay: true,
          animationCompleted: (){
            notifier.setIgnoreTouch(ignore: false);
          },
          child: SlideAnimation(
            animationCompleted: (){
              notifier.resetCard2();
            },
              reset: notifier.resetSwipeCard2,
              animate: notifier.swipeCard2,
              direction: notifier.swipedDirection,
              child: Center(
                child: Container(
                  width: size.width * 0.90,
                  height: size.height * 0.70,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
