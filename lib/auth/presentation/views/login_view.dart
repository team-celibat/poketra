
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: const Column(
            children: [
              Text('Login')
            ],
          ),
        ) ,
      )
    );
  }
}
