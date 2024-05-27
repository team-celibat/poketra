import 'package:flutter/material.dart';
import 'package:poketra/global/widgets/poketra_logo.dart';

class StartingView extends StatelessWidget {
  const StartingView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const PoketraLogo(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Theme.of(context).colorScheme.background,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: ClipRect(
                      child: Image.asset(
                        'assets/positive_attitude.png',
                        fit: BoxFit.cover,
                        height: screenHeight * 0.2,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
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
                    height: 16,
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
                        height: 8,
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
      ),
    );
  }
}

//poketra logo widget

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
               color: Colors.black54
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
