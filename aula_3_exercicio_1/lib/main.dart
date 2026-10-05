import 'package:flutter/material.dart';

void main() => runApp(const Exercicio1App());

class Exercicio1App extends StatelessWidget {
  const Exercicio1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercício 1',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Background azul',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
