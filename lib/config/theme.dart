import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Avenir',
      textTheme: textTheme()
  );
}

TextTheme textTheme() {
  return TextTheme(
  
    headline1: GoogleFonts.openSansCondensed(
        fontSize: 32,
        color: Colors.black,
        fontWeight: FontWeight.bold
        
    ),
    headline2: GoogleFonts.openSansCondensed(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.bold
        
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold
    ),
    headline6: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'Avenir',
      fontWeight: FontWeight.normal
    ),
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontFamily: 'Avenir',
      fontWeight: FontWeight.normal
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontSize: 10,
      fontFamily: 'Avenir',
      fontWeight: FontWeight.normal
    ),
  );

}