import 'package:flutter/material.dart';
import 'package:practica_basic_app/theme/app_theme.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('companentes de flutter'),
      ),
      body: ListView(
        children:  <Widget>[
          ListTile(
            title: Text('Entradas', 
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Introduciendo valores',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading:  const Icon(Icons.input),
            trailing:  const Icon(Icons.arrow_circle_right_rounded),
          ),
          const Divider(),
           ListTile(
            title: Text('Listview.builder',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Lista con scroll infinito',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading: const Icon(Icons.list),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
          ),
          const Divider(),
          ListTile(
            title: Text('Notificaciones',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Mostrar una notificación',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading: const Icon(Icons.notification_add),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
          ),
        ],
      ),
    );
  }
}
