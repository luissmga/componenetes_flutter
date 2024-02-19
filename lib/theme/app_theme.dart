//Definincion de los temas de estilo de la app
import 'package:flutter/material.dart';

class AppTheme {
  //Constantes de color primario
  static const primaryColor = Color.fromARGB(255, 230, 250, 11);
  //Constante de color de fondo
  static const backColor = Color.fromARGB(34, 23, 57, 90);
  //Constante de tema en lugar de lightTheme usar dartTheme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
      primaryColor: const Color.fromARGB(255, 217, 31, 167),
      appBarTheme: const AppBarTheme(color: primaryColor));
}
