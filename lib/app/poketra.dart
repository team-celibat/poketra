import 'package:flutter/material.dart';
import 'package:poketra/on_boarding/presentation/index.dart';

class PoketraApp extends StatelessWidget {
  const PoketraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
        debugShowCheckedModeBanner: false,
      home: const FirstOnBoarding()
    );
  }
}
