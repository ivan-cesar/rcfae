import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  static const tag = "/help_screen";
  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aide'), // Titre de la fenêtre d'aide
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Hello Ivan', // Votre texte d'aide
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

