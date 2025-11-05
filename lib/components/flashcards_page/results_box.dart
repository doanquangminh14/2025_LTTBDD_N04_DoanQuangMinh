import 'package:flashcard_app/notifiers/flashcards_notifier.dart';
import 'package:flashcard_app/pages/flashcards_page.dart';
import 'package:flashcard_app/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../l10n/app_localizations.dart';

class ResultsBox extends StatelessWidget {
  const ResultsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashcardsNotifier>(
      builder: (_, notifier, __) => AlertDialog(
        title: Text(
          notifier.isSessionCompleted
              ? AppLocalizations.of(context)?.resultsSessionCompleted ??
              'Session Completed!'
              : AppLocalizations.of(context)?.resultsRoundCompleted ??
              'Round Completed',
          textAlign: TextAlign.center,
        ),
        actions: [
          Table(
            columnWidths: {
              0: FlexColumnWidth(3),
              1: FlexColumnWidth(1),
            },
            children: [
              buildTableRow(
                  title: AppLocalizations.of(context)?.resultsTotalRound ??
                      'Total Round',
                  stat: notifier.roundTally.toString()),
              buildTableRow(
                  title: AppLocalizations.of(context)?.resultsTotalCards ??
                      'Total Cards',
                  stat: notifier.cardTally.toString()),
              buildTableRow(
                  title:
                  AppLocalizations.of(context)?.resultsCorrect ?? 'Correct',
                  stat: notifier.correctTally.toString()),
              buildTableRow(
                  title: AppLocalizations.of(context)?.resultsIncorrect ??
                      'Incorrect',
                  stat: notifier.incorrectTally.toString()),
              buildTableRow(
                  title: AppLocalizations.of(context)?.resultsCorrectPercentage ??
                      'Correct Percentage',
                  stat: '${notifier.correctPercentage.toString()}%'),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
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
                          child:  Text(AppLocalizations.of(context)?.resultsRetestButton ??
                                  'Retest Incorrect Cards'),
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
                    child: Text(AppLocalizations.of(context)?.resultsHomeButton ??
                            'Home'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TableRow buildTableRow({required String title, required String stat}) {
    return TableRow(
              children: [
                TableCell(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(stat, textAlign: TextAlign.right,),
                )),
              ]
            );
  }
}
