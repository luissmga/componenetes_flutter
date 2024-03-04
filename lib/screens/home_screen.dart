import 'package:flutter/material.dart';
import 'package:practica_basic_app/theme/app_theme.dart';
//import 'package:practica_basic_app/screens/data_screen.dart';
import 'package:practica_basic_app/screens/inputs_screen.dart';
import 'package:practica_basic_app/screens/infinite_scroll_screen.dart';
import 'package:practica_basic_app/screens/notifications_screen.dart';

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
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.input),
              ),
            trailing:IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
              ),
              onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InputScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
           ListTile(
            title: Text('Listview.builder',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Lista con scroll infinito',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.input),
              ),
            trailing:IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
              ),
              onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InfiniteScrollScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Notificaciones',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Mostrar una notificación',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.input),
              ),
            trailing:IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
              ),
              onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const NotifacationsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
        ],
      ),
    );
  }
}
