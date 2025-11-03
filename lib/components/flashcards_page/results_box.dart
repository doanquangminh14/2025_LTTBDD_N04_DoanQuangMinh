import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flashcard_app/pages/flashcards_page.dart';
import 'package:flashcard_app/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class ResultsBox extends StatelessWidget {
  const ResultsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashcardsNotifier>(
      builder: (_, notifier, __) => AlertDialog(
        title: Text(
          notifier.isSessionCompleted
              ? 'Session Completed!'
              : 'Round Completed',
          textAlign: TextAlign.center,
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              notifier.isSessionCompleted
                  ? SizedBox()
                  : ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FlashcardsPage(),
                          ),
                        );
                      },
                      child: Text('Retest Incorrect Cards'),
                    ),
              ElevatedButton(
                onPressed: () {
                  notifier.reset();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false,
                  );
                },
                child: Text('Home'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
