import 'package:flutter/material.dart';
import 'book.dart';
import 'package:share_plus/share_plus.dart';

class BookCard extends StatefulWidget {
  final Book book;
  final VoidCallback? onTap;

  const BookCard({super.key, required this.book, this.onTap});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  bool isFavorite = false;

  void _shareBook() {
    final book = widget.book;
    final text =
        'Confira este livro!\n\n"${book.titulo}" de ${book.autor}\nGênero: ${book.genero}\nAno: ${book.anoPublicacao}\nAvaliação: ${book.avaliacao}⭐';
    Share.share(text);
  }

  @override
  Widget build(BuildContext context) {
    final book = widget.book;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      color: Colors.white,
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      book.titulo,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 4),
              Text('Autor: ${book.autor}'),
              const SizedBox(height: 4),
              Text('Ano de Publicação: ${book.anoPublicacao}'),
              const SizedBox(height: 4),
              Text('Gênero: ${book.genero}'),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Text('Avaliação: '),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Text('${book.avaliacao.toStringAsFixed(1)}'),
                ],
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton.icon(
                  onPressed: _shareBook,
                  icon: const Icon(Icons.share),
                  label: const Text('Compartilhar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
