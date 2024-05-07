import 'package:flutter/material.dart';

class PoketraApp extends StatelessWidget {
  const PoketraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.blue, child: const Text("Poketra"),)
        ),
      ),
    );
  }
}
