import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<String> linguagens = const ['Dart', 'JavaScript', 'PHP', 'C++'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Responsive Layout')),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final conteudo = [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Cheetah Coding', style: TextStyle(fontSize: 24)),
              ),
              ...linguagens.map(
                (item) => Card(
                  child: ListTile(
                    title: Text(item),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
              ),
            ];

            if (constraints.maxWidth < 600) {
              return ListView(padding: const EdgeInsets.all(12), children: conteudo);
            }

            return Row(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Cheetah Coding', style: TextStyle(fontSize: 28)),
                        SizedBox(height: 20),
                        ElevatedButton(onPressed: null, child: Text('BUTTON')),
                        SizedBox(height: 10),
                        ElevatedButton(onPressed: null, child: Text('BUTTON')),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(12),
                    children: linguagens
                        .map((e) => Card(child: ListTile(title: Text(e))))
                        .toList(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
