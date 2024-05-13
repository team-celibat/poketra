import 'package:flutter/material.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_bottom_navigation.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_content.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_top_navigation.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 119, 1),
          ),
          child: Container(
              margin: EdgeInsets.only(left: 15,top: heightScreen * 0.06,right: 15,bottom: heightScreen * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const OnBoardingTopNavigation(),
                    SizedBox(height: heightScreen * 0.03,),
                    const Expanded(child: OnBoardingContent()),
                    SizedBox(height: heightScreen * 0.03,),
                    const OnBoardingBottomNavigation()
                  ],
                ),
          )
      ),
    );
  }
}
