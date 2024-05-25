import 'package:flutter/material.dart';
import 'package:poketra/core/constants/theme.dart';
import 'package:poketra/core/route/app_router.dart';


class PoketraApp extends StatelessWidget {
  const PoketraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.goRouter,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
