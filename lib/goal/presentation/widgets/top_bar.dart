import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.title, required this.pushBack});

  final String title;
  final String pushBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: (){
            context.pushNamed(pushBack);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 24.0,
            // color: Colors.blue,
          ),
        ),
        Text(title,style: Theme.of(context).textTheme.headlineMedium,)
      ],
    );
  }
}
