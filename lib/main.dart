import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter is Fun!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Flutter is Fun!'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.deepOrange,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Hi Mom ',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Icon(
                Icons.wb_sunny,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
