import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// Exercício 2 - BRADEMO Aula 2 (Introdução ao Flutter)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 2 - Barra de Botões',
      home: Scaffold(
        appBar: AppBar(title: const Text('Barra de Botões')),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          alignment: Alignment.center,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _ActionButton(icon: Icons.call, label: 'CALL'),
              _ActionButton(icon: Icons.near_me, label: 'ROUTE'),
              _ActionButton(icon: Icons.share, label: 'SHARE'),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    const color = Colors.deepPurple;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 34),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            color: color,
            fontSize: 12,
            letterSpacing: 1,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
