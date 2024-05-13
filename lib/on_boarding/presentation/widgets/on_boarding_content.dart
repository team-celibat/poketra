import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({super.key});

  @override
  Widget build(BuildContext context) {
      double widthScreen = MediaQuery.of(context).size.width;
      double heightScreen = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: Image.asset(
            'assets/onboardingfirst.png',
            fit: BoxFit.cover,
            height: heightScreen * 0.3,
            scale: 1,
          ),
        ),
         SizedBox(
          height: heightScreen * 0.02,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Apprener à gérer votre argent intelligement",
                style:
                    TextStyle(fontSize: heightScreen * 0.05 , color: Color.fromRGBO(18, 8, 4, 1)),
              ),
            ),
            SizedBox(
                height: heightScreen * 0.01
            ),
            Text(
                "Notre application vous permet de suivre "
                "vos dépenses et de créer des budgets personnalisés "
                "pour mieux gérer votre argent",
                style:
                    TextStyle(fontSize: heightScreen * 0.025, color: Color.fromRGBO(18, 8, 4, 1)))
          ],
        )
      ],
    );
  }
}
