import 'package:flutter/material.dart';

void main() => runApp(const FabApp());

class FabApp extends StatefulWidget {
  const FabApp({super.key});

  @override
  State<FabApp> createState() => _FabAppState();
}

class _FabAppState extends State<FabApp> {
  int index = 0;
  bool aberto = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('BottomAppBar with FAB')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('TAB: ${index + 1}', style: const TextStyle(fontSize: 30)),
              if (aberto) ...[
                const SizedBox(height: 25),
                IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.email)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
              ],
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => aberto = !aberto),
          child: Icon(aberto ? Icons.close : Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () => setState(() => index = 0),
                icon: const Icon(Icons.menu),
              ),
              IconButton(
                onPressed: () => setState(() => index = 1),
                icon: const Icon(Icons.home),
              ),
              const SizedBox(width: 48),
              IconButton(
                onPressed: () => setState(() => index = 2),
                icon: const Icon(Icons.grid_view),
              ),
              IconButton(
                onPressed: () => setState(() => index = 3),
                icon: const Icon(Icons.info),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
