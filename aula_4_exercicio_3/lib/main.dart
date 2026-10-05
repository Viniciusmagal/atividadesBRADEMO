import 'package:flutter/material.dart';

void main() => runApp(const ConstraintsApp());

class ConstraintsApp extends StatelessWidget {
  const ConstraintsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout Constraints')),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 200,
              maxWidth: 350,
              minHeight: 150,
              maxHeight: 300,
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blue,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Constraints go down.\nSizes go up.\nParent sets position.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: ColoredBox(color: Colors.cyanAccent),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
