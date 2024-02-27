import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practica_basic_app/theme/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool switchValue = false; //Controlar el widget switch
  double sliderValue = 0.0; //Controlar la barra despazable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Entradas',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          entradaNombre(),
          entradaSwitch(),
          entradaSlider(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Regresar',
                  )),
              ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Ventana de datos',
                  ))
            ],
          )
        ],
      ),
    );
  }

  TextField entradaNombre() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre:',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Switch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            }),
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '¿Indica qué tanto te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: AppTheme.primaryColor,
          thumbColor: AppTheme.secondaryColor,
            inactiveColor: AppTheme.backColor2,
            value: sliderValue,
            divisions: 9,
            label: '${sliderValue.round()}',
            onChanged: (value) {
              setState(() {
                sliderValue = value;
                //print('Se cambio el slider: $sliderValue');
              });
            }),
      ],
    );
  }
}
