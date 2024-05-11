import 'package:flutter/material.dart';

class OnBoardingBottomNavigation extends StatelessWidget {
  const OnBoardingBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(59)),
              child:SizedBox(
                width: 40,
                height: 15,
                child: Container(
                  color: Colors.black,
                ),),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(59)),
              child:SizedBox(
                width: 20,
                height: 15,
                child: Container(
                  color: Colors.black,
                ),),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(59)),
              child:SizedBox(
                width: 20,
                height: 15,
                child: Container(
                  color: Colors.black,
                ),),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(59)),
          child: Container(
              color: const Color.fromRGBO(119, 250, 206, 1),
              child:const IconButton(onPressed: null,color:Color.fromRGBO(119, 259, 206, 1), icon: Icon(Icons.chevron_right))
          ),
        )
      ],
    );
  }
}
