import 'package:flutter/material.dart';

void main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usuarioController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  void dispose() {
    usuarioController.dispose();
    senhaController.dispose();
    super.dispose();
  }

  void fazerLogin() {
    if (usuarioController.text == 'admin' && senhaController.text == '1234') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BemVindoPage(usuario: 'admin'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Falha no login! Usuário ou senha incorretos.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 120),
              const SizedBox(height: 32),
              TextField(
                controller: usuarioController,
                decoration: const InputDecoration(
                  labelText: 'Usuário',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: fazerLogin,
                  child: const Text('Entrar'),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fazerLogin,
        child: const Icon(Icons.login),
      ),
    );
  }
}

class BemVindoPage extends StatelessWidget {
  final String usuario;

  const BemVindoPage({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bem-vindo')),
      body: Center(
        child: Text(
          'Login realizado com sucesso!\nBem-vindo, $usuario!',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
