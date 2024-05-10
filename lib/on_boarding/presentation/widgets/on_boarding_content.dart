import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          ClipRRect(
            child: Image.asset(
              'assets/onboardingfirst.png',
              fit: BoxFit.cover,
              scale: 1,
            ),
        ),
        const SizedBox(height: 34,),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Apprener à gérer votre argent intelligement" ,style: TextStyle(fontSize: 32,color: Color.fromRGBO(18, 8, 4, 1)),),
            SizedBox(height: 24,),
            Text("Notre application vous permet de suivre "
                "vos dépenses et de créer des budgets personnalisés "
                "pour mieux gérer votre argent",style: TextStyle(fontSize: 18,color: Color.fromRGBO(18, 8, 4, 1)))
          ],
        )
      ],
    );
  }
}
