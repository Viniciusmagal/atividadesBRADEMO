import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// Exercício 4 - BRADEMO Aula 2 (Introdução ao Flutter)
/// Widgets utilizados: Image, SizedBox, FittedBox
///
/// Obs.: as imagens usadas aqui vêm de uma URL de exemplo (picsum.photos).
/// Troque pelas imagens de sua preferência.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 4 - Insert Image Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Insert Image Example')),
        body: Column(
          children: [
            // Imagem maior
            SizedBox(
              width: double.infinity,
              height: 300,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(
                  'https://i.scdn.co/image/ab67616d00001e025ed714183a6fa90e4121c889',
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 150,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(
                  'https://www.impericon.com/cdn/shop/articles/20230725_acdc_3.jpg?v=1764770120',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
