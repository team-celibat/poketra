import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final double screenWight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PoketraLogo(),
                const SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Image.asset(
                    'assets/positive_attitude.png',
                    fit: BoxFit.cover,
                    height: screenHeight * 0.25,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  'Commencez dès maintenant, ',
                  style: textTheme.headlineLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Commencez en créant un compte ou en vous connectant si vous en avez déjà un pour pouvoir utiliser Poketra ',
                    style: textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomButton(
                        label: "Créer un compte",
                        onPressed: () {},
                        type: ButtonType.primary
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomButton(
                        label: "Se connecter",
                        onPressed: () {},
                        type: ButtonType.secondary
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//poketra logo widget
class PoketraLogo extends StatelessWidget {
  const PoketraLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('.Poketra',
        style: TextStyle(
            fontSize: Theme.of(context).textTheme.displaySmall?.fontSize,
            fontWeight: FontWeight.bold));
  }
}
//enums
enum ButtonType { primary, secondary}

//custom buttons
class CustomButton extends StatelessWidget {
  final void Function() onPressed;

  final ButtonType type;

  final String label;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.type,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: type == ButtonType.primary ? Theme.of(context).colorScheme.primary : Colors.white ,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            side: const BorderSide(
               color: Colors.black12
            )
          ),
          onPressed: onPressed,
          child: Text(
              label,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
              )
          )),
    );
  }
}
