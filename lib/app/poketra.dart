import 'package:flutter/material.dart';

class PoketraApp extends StatelessWidget {
  const PoketraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: const Color.fromRGBO(252, 255, 119, 1) ,child: const Text("Poketra"),)
        ),
      ),
    );
  }
}
