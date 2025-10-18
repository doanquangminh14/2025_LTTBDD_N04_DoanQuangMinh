import 'package:flashcard_app/configs/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
      primaryColor: ngocdam,

      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: GoogleFonts.notoSans().fontFamily
        )
      ),

  appBarTheme: AppBarTheme(
     titleTextStyle: TextStyle(
      fontFamily: GoogleFonts.notoSans().fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
     ),
     color: ngocdam,
  ),
 scaffoldBackgroundColor: ngocnhat,

);