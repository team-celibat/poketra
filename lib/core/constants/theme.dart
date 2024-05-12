import 'package:flutter/material.dart';

const textColor = Color(0xFF1d1a05);
const backgroundColor = Color(0xFFfdfcf4);
const primaryColor = Color(0xFFd9c827);
const primaryFgColor = Color(0xFF1d1a05);
const secondaryColor = Color(0xFF92eb8e);
const secondaryFgColor = Color(0xFF1d1a05);
const accentColor = Color(0xFF63e395);
const accentFgColor = Color(0xFF1d1a05);

const colorScheme = ColorScheme(
  brightness: Brightness.light,
  background: backgroundColor,
  onBackground: textColor,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.light == Brightness.light ? Color(0xffB3261E) : Color(0xffF2B8B5),
  onError: Brightness.light == Brightness.light ? Color(0xffFFFFFF) : Color(0xff601410),
);