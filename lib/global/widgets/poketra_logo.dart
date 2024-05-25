import 'package:flutter/material.dart';

class PoketraLogo extends StatelessWidget {
  const PoketraLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('.Poketra',
        style: TextStyle(
            fontSize: Theme.of(context).textTheme.displaySmall?.fontSize,
            fontWeight: FontWeight.bold));
  }
}