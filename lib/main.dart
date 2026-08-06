import 'package:flutter/material.dart';
import 'package:projeto/screens/myhomepage.dart';
import 'package:projeto/screens/segunda_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aula01',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomePage(title: "Calculadora Digital 1.0"),
    );
  }
}
//const MyHomePage(title: "Calculadora Digital 1.0")

