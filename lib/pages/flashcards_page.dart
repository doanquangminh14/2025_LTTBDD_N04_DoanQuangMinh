//import 'package:flashcard_app/animations/half_flip_animation.dart';/
//import 'package:flashcard_app/animations/slide_animation.dart';
import 'package:flashcard_app/components/flashcards_page/card_1.dart';
import 'package:flashcard_app/components/flashcards_page/card_2.dart';
//import 'package:flashcard_app/enums/slide_direction.dart';
import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/app/custom_appbar.dart';

class FlashcardsPage extends StatefulWidget {
  const FlashcardsPage({super.key});

  @override
  State<FlashcardsPage> createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final flashcardsNotifier = Provider.of<FlashcardsNotifier>(context, listen: false);
      flashcardsNotifier.runSlideCard1();
      flashcardsNotifier.generateAllSelectedWords();
      flashcardsNotifier.generateCurrentWord();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashcardsNotifier>(
      builder: (_, notifier, __) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(),
        ),
        body: IgnorePointer(
          ignoring: notifier.ignoreTouches,
          child: Stack(children: [Card2(), Card1()]),
        ),
      ),
    );
  }
}
