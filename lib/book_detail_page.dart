import 'package:flutter/material.dart';
import 'book.dart';

class BookDetailPage extends StatelessWidget {
  final Book book;

  const BookDetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.titulo),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Título: ${book.titulo}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Autor: ${book.autor}'),
            const SizedBox(height: 8),
            Text('Ano de Publicação: ${book.anoPublicacao}'),
            const SizedBox(height: 8),
            Text('Gênero: ${book.genero}'),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('Avaliação: '),
                Icon(Icons.star, color: Colors.amber, size: 20),
                Text('${book.avaliacao.toStringAsFixed(1)}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
