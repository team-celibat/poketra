import 'package:flutter/material.dart';
import 'package:poketra/core/route/app_router.dart';
import 'package:poketra/on_boarding/presentation/index.dart';

class PoketraApp extends StatelessWidget {
  const PoketraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.goRouter,
      theme: ThemeData(
        //Todo: add google fonts dependencies to use roboto font
        //textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
        debugShowCheckedModeBanner: false,
    );
  }
}
