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
        child: HalfFlipAnimation(
          animate:notifier.flipCard2,
          reset: false,
          filipFromHalfWay: true,
          animationCompleted: (){
            print('anim 2 flip completed');
          },
          child: SlideAnimation(
              direction: SlideDirection.upIn,
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
