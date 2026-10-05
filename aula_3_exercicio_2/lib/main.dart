import 'package:flutter/material.dart';

void main() => runApp(const Exercicio2App());

class Exercicio2App extends StatelessWidget {
  const Exercicio2App({super.key});

  @override
  Widget build(BuildContext context) {
    final temaInicial = ThemeData(
      scaffoldBackgroundColor: Colors.blue,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercício 2',
      theme: temaInicial,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final temaSobrescrito = Theme.of(context).copyWith(
      scaffoldBackgroundColor: Colors.yellow,
    );

    return Theme(
      data: temaSobrescrito,
      child: const Scaffold(
        body: Center(
          child: Text(
            'ThemeData sobrescrito',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
