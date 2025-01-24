import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.montserratTextTheme();

    return AdaptiveTheme(
      light: ThemeData.light(useMaterial3: true).copyWith(
        textTheme: textTheme,
      ),
      dark: ThemeData.dark(useMaterial3: true).copyWith(
        textTheme: textTheme,
      ),
      initial: AdaptiveThemeMode.dark,
      builder: (light, dark) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: light,
        darkTheme: dark,
        home: const HomePage(),
      ),
    );
  }
}
