import 'package:flutter/material.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_bottom_navigation.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_content.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_top_navigation.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 119, 1),
          ),
          child: Container(
              margin: const EdgeInsets.only(left: 10,top: 50,right: 10,bottom: 50),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OnBoardingTopNavigation(),
                  OnBoardingContent()
                  // OnBoardingBottomNavigation()
                ],
              )
          )
      ),
    );
  }
}
