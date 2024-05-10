import 'package:flutter/material.dart';

class OnBoardingTopNavigation extends StatelessWidget {
  const OnBoardingTopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(".Poketra",
            style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 35),
          ),
          TextButton(onPressed: null, child: Text("skip",style: TextStyle(color: Colors.black54,fontSize: 20),))

        ],
      )
    );
  }
}
