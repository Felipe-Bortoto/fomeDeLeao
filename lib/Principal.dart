import 'package:flutter/material.dart';
import 'HomePage.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fome de Leão',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF8B2500),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B2500),
          primary: const Color(0xFF8B2500),
          secondary: Colors.amber,
        ),
        scaffoldBackgroundColor: const Color(0xFFF9F7F2),
      ),
      home: const HomePage(),
    );
  }
}

