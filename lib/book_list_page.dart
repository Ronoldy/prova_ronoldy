import 'package:flutter/material.dart';
import 'book.dart';
import 'book_card.dart';
import 'book_detail_page.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final books = Book.getListExample();

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Livros')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: BookCard(
              book: book,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(book: book),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
