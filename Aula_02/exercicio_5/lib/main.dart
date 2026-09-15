import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// Exercício 5 - BRADEMO Aula 2 (Introdução ao Flutter)
/// Implementação baseada no tutorial oficial de layout do Flutter:
/// https://docs.flutter.dev/ui/layout/tutorial
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 5 - Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: const [
            _ImageSection(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaSqLYikDqJL5itdOH-kYN1BE3KHY30PtZfmeySjpzVqES-nDHdZ9L5Yqj&s=10',
            ),

            _TitleSection(
              name: 'Guns N Roses',
              location: 'Los Angeles, Califórnia',
            ),

            _ButtonSection(),

            _TextSection(
              description: '''
Guns N Roses é uma banda americana de hard rock formada em Los Angeles, Califórnia, em 1985, resultado da fusão entre as bandas locais L.A. Guns e Hollywood Rose.

A formação original do grupo era composta pelo vocalista Axl Rose, o baixista Ole Beich, o baterista Rob Gardner e os guitarristas Tracii Guns e Izzy Stradlin.

Meses depois, após assinarem com a Geffen Records, a formação "clássica" do grupo contava com Rose, Stradlin, o guitarrista Slash, o baixista Duff McKagan e o baterista Steven Adler.

A formação atual inclui Rose, Slash, McKagan, o guitarrista Richard Fortus, os tecladistas Dizzy Reed e Melissa Reese e o baterista Isaac Carpenter.
''',
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageSection extends StatelessWidget {
  final String imageUrl;

  const _ImageSection({
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: double.infinity,
      fit: BoxFit.fitWidth,
    );
  }
}

class _TitleSection extends StatelessWidget {
  final String name;
  final String location;

  const _TitleSection({
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    location,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ButtonColumn(
            icon: Icons.call,
            label: 'CALL',
          ),
          _ButtonColumn(
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          _ButtonColumn(
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class _ButtonColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ButtonColumn({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class _TextSection extends StatelessWidget {
  final String description;

  const _TextSection({
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}