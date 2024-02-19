import 'package:flutter/material.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('companentes de flutter'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text('Kenia OS'),
            subtitle: Text('Cantante Mexicana'),
            leading: Icon(Icons.casino),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
           ListTile(
            title: Text('Karol G'),
            subtitle: Text('Cantante Colombiana'),
            leading: Icon(Icons.price_check_rounded),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
          ListTile(
            title: Text('Danna Paola'),
            subtitle: Text('Cantante Mexicana'),
            leading: Icon(Icons.beach_access),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
        ],
      ),
    );
  }
}
