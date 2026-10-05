import 'package:flutter/material.dart';

void main() => runApp(const FormApp());

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final nome = TextEditingController();
  final telefone = TextEditingController();
  final data = TextEditingController();

  @override
  void dispose() {
    nome.dispose();
    telefone.dispose();
    data.dispose();
    super.dispose();
  }

  void enviar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Nome: ${nome.text} | Telefone: ${telefone.text} | Data: ${data.text}',
        ),
      ),
    );
  }

  Widget campo(IconData icon, String label, TextEditingController controller) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 12),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(labelText: label),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Form Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            campo(Icons.person, 'Name', nome),
            campo(Icons.phone, 'Phone', telefone),
            campo(Icons.calendar_today, 'Date', data),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: enviar, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}
