import 'package:flashcard_app/pages/flashcards_page.dart';
import 'package:flutter/material.dart';

loadSession({required BuildContext context}){

   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FlashcardsPage()));

}