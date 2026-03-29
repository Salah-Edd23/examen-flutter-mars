import 'package:flutter/material.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaPage(),
    );
  }
}

class MaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Application Flutter'),
      ),
      body: Column(
        children: [
          Text('Bienvenue'),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Bonjour Flutter')),
              );
            },
            child: Text('Cliquer'),
          ),
        ],
      ),
    );
  }
}