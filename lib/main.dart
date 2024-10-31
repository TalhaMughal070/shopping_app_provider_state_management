import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/views/auth_screens/signup_screen.dart';
import 'package:shopping_app_provider_state_management/views/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.97),
        appBarTheme:
            AppBarTheme(backgroundColor: Colors.white.withOpacity(0.1)),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffDB3022)),
        useMaterial3: true,
      ),
      home: SignupScreen(),
    );
  }
}
