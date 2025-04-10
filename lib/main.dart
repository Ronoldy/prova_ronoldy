import 'package:flutter/material.dart';
import 'book_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Livros',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
      routes: {
        '/lista': (context) => const BookListPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catálogo de Livros')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ver Lista de Livros'),
          onPressed: () => Navigator.pushNamed(context, '/lista'),
        ),
      ),
    );
  }
}
