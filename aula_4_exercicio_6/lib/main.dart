import 'package:flutter/material.dart';

void main() => runApp(const TarefasApp());

class TarefasApp extends StatelessWidget {
  const TarefasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TarefasPage(),
    );
  }
}

class TarefasPage extends StatefulWidget {
  const TarefasPage({super.key});

  @override
  State<TarefasPage> createState() => _TarefasPageState();
}

class _TarefasPageState extends State<TarefasPage> {
  final tarefas = List.generate(
    5,
    (i) => {'titulo': 'Task 2027-09-0${i + 1}', 'feito': false},
  );

  void mostrarDialogo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Notas de Tarefas'),
        content: const Text('Você está no App de Notas de Tarefas'),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task List')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('View Completed Tasks'),
            ),
          ),
          const Text('You have 5 uncompleted tasks'),
          Expanded(
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (context, index) {
                final tarefa = tarefas[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: CheckboxListTile(
                    title: Text(tarefa['titulo'] as String),
                    subtitle: const Text('10:00-12:00'),
                    value: tarefa['feito'] as bool,
                    onChanged: (value) {
                      setState(() => tarefa['feito'] = value ?? false);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: mostrarDialogo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
