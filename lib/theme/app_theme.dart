//Definincion de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constantes de color primario
  static const primaryColor = Color.fromARGB(255, 138, 35, 158);
  //Constatnte de color secundario
  static const secondaryColor = Color.fromARGB(255, 238, 255, 2);
  //Constante de color de fondo
  static const backColor = Color.fromARGB(222, 0, 0, 0);
  //Constante de tema en lugar de lightTheme usar dartTheme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
      primaryColor: const Color.fromARGB(255, 217, 31, 167),
      appBarTheme:  AppBarTheme(
        color: primaryColor,
        titleTextStyle: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 28.5,
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: const IconThemeData(
        color: primaryColor,
        size: 35.0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
          primaryColor
        ),
        foregroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(fontSize: 25.0),
        ),
        ),
      ),
      textTheme: TextTheme(
        //Titulos muy grandes
        headlineLarge: GoogleFonts.alatsi(
          color: primaryColor,
          fontSize: 26.5,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: primaryColor,
          decorationStyle: TextDecorationStyle.dashed,
          decorationThickness: 1.0,
        ),

        //Estilo para texto muy pequeño
        bodySmall: GoogleFonts.monda(
          color: secondaryColor,
          fontSize: 16.0,
          
        ),
      )
    );
}
