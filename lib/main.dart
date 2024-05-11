import 'package:flutter/material.dart';
import 'package:poketra/app/poketra.dart';
import 'package:poketra/core/route/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppRouter.instance;
  runApp(const PoketraApp());
}

