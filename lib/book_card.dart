class Book {
  final String title;
  final String author;
  final int pages;

  Book({
    required this.title,
    required this.author,
    required this.pages,
  });

  bool isLongBook() {
    return pages > 300;
  }

  static Book getExample() {
    return Book(
      title: 'The Dart Programming Language',
      author: 'Chris Buckett',
      pages: 350,
    );
  }
}
