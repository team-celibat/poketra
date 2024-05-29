import 'package:flutter/material.dart';
import 'package:poketra/core/constants/index.dart';
import 'package:poketra/goal/presentation/widgets/gloals_container.dart';
import 'package:poketra/goal/presentation/widgets/top_bar.dart';

class GoalsView extends StatelessWidget {
  const GoalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(252, 250, 241, 1),
      child: Column(
        children: [
          TopBar(title: "Objectif", pushBack: RoutePath.onboarding),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: GoalsContainer(),
          )
        ],
      ),
    );
  }
}
