import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyGame());
}

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'White Gold Rose',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const GameHomePage(title: 'White Gold Rose'),
    );
  }
}
