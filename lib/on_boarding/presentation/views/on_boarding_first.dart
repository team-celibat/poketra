import 'package:flutter/material.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 119, 1),
        ),
        child: const Column(
          children: [
             Text('Andramana ary eh de'),
          ],
        )
    );
  }
}
