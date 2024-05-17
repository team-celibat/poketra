import 'package:flutter/material.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_bottom_navigation.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_content.dart';
import 'package:poketra/on_boarding/presentation/widgets/on_boarding_top_navigation.dart';

class OnBoarding extends StatelessWidget {

  const OnBoarding(
      {
        super.key, required this.color,   required this.skip, required this.onTab, required this.index, required this.image, required this.title, required this.description,
      }
      );

  final Color color;
  final String image;
  final String title;
  final String description;
  final int index;
  final bool skip;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: color,
          ),
          child: Container(
              margin: EdgeInsets.only(left: 15,top: heightScreen * 0.06,right: 15,bottom: heightScreen * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OnBoardingTopNavigation(skip: skip,),
                    SizedBox(height: heightScreen * 0.03,),
                    Expanded(child: OnBoardingContent(image: image, title: title, description: description, index: index,)),
                    SizedBox(height: heightScreen * 0.03,),
                    OnBoardingBottomNavigation(onTap: onTab, index: index,)
                  ],
                ),
          )
      ),
    );
  }
}
