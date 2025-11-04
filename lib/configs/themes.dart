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
        ),
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 58,
          fontFamily: GoogleFonts.notoSans().fontFamily,
          fontWeight: FontWeight.bold,
        ),
      ),

  appBarTheme: AppBarTheme(
    elevation: 0,
     centerTitle: true,
     titleTextStyle: TextStyle(
      fontFamily: GoogleFonts.notoSans().fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
     ),
     color: ngocdam,
  ),
 scaffoldBackgroundColor: ngocnhat,

  dialogTheme: DialogThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kCircularBorderRadius),
    ),
    backgroundColor: ngocdam,
    titleTextStyle: TextStyle(
      fontFamily: GoogleFonts.notoSans().fontFamily,
      fontSize: 20,
      color: Colors.white
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kCircularBorderRadius),
        side: BorderSide(
          color: Colors.white,
        ),
      ),
        backgroundColor: ngocnhat,
      textStyle: TextStyle(
        fontFamily: GoogleFonts.notoSans().fontFamily,
        color: Colors.white,
          fontSize: 15,
      ),

    ),
  ),

    progressIndicatorTheme: ProgressIndicatorThemeData(
     color: ngocdam,
  linearTrackColor: Colors.grey,
),

);