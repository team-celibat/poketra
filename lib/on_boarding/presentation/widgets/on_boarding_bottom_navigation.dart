import 'package:flutter/material.dart';

class OnBoardingBottomNavigation extends StatelessWidget {
  const OnBoardingBottomNavigation({super.key, required this.onTap, required this.index, required this.nextButtonColor});

  final VoidCallback onTap;
  final int index;
  final Color nextButtonColor;
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(59)),
              child:SizedBox(
                width: 45,
                height: heightScreen * 0.02,
                child: Container(
                  color: Colors.black,
                ),),
            ),
            const SizedBox(
              width: 10,
              height: 15,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(59)),
              child:SizedBox(
                width: 20,
                height: heightScreen * 0.02,
                child: Container(
                  color: Colors.black,
                ),),
            ),
            const SizedBox(
              width: 10,
              height: 15,
              ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(59)),
              child:SizedBox(
                width: 20,
                height: heightScreen * 0.02,
                child: Container(
                  color: Colors.black,
                ),),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(59)),
          child: Container(
              color: nextButtonColor,
              child:GestureDetector(
                  onTap: onTap,
                  child: const IconButton(onPressed: null,color:Color.fromRGBO(119, 259, 206, 1), icon: Icon(Icons.chevron_right))),
          ),
        )
      ],
    );
  }
}
