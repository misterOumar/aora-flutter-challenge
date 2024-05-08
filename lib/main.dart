import 'package:aora/screens/home_screen.dart';
import 'package:aora/screens/login_screen.dart';
import 'package:aora/screens/main_nav_bar.dart';
import 'package:aora/screens/onboarding_screen.dart';
import 'package:aora/screens/signup_screen.dart';
import 'package:aora/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aora Challenge',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkThemeMode,
      home: const OnboardingScreen(),
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),
        'signup': (context) => const SignUpScreen(),
        'login': (context) => const LoginScreen(),
        'home': (context) => const HomeScreen(),
        'main_nav_bar': (context) => const MainNavBar(),
      },
    );
  }
}
