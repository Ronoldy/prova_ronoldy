class Book {
  final String titulo;
  final String autor;
  final int anoPublicacao;
  final String genero;
  final double avaliacao;

  Book({
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
    required this.avaliacao,
  });

  static List<Book> getListExample() {
    return [
      Book(
        titulo: 'Dom Casmurro',
        autor: 'Machado de Assis',
        anoPublicacao: 1899,
        genero: 'Romance',
        avaliacao: 4.5,
      ),
      Book(
        titulo: '1984',
        autor: 'George Orwell',
        anoPublicacao: 1949,
        genero: 'Distopia',
        avaliacao: 4.8,
      ),
      // Pode adicionar mais livros aqui...
    ];
  }
}
