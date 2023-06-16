import 'package:library_management/imports.dart';

class Book {
  int bookId;
  String title;
  int authorId;
  String type;

  Book({
    required this.bookId,
    required this.title,
    required this.authorId,
    required this.type
  });
}


List<Book> filterType(String type){
  List<Book> current =[];
  for(var book in bookList){
    if(book.type == type){
      current.add(book);
    }
  }
  return current;
}

void addBook(String title, String authorName, String authorSurname, String type){
  int authorId = findAuthorId(authorName, authorSurname);
  bookList.add(Book(bookId: bookList.length, title: title, authorId: authorId, type: type));
}

List<Book> writtenBy(int authorId) {
  List<Book> dummy = [];
  for (var book in bookList) {
    if(book.authorId == authorId) {
      dummy.add(book);
    }
  }
  return dummy;
}

List<Book> bookList =[

  Book(
    bookId: 1,
    title: "Lord of the Rings",
    authorId: 1,
    type: "Adventure"
  ),
  Book(
    bookId: 2,
    title: "Hobbit",
    authorId: 1,
    type: "Adventure"
  ),
  Book(
    bookId: 3,
    title: "Silmarillion",
    authorId: 1,
    type: "Adventure"
  ),

  Book(
    bookId: 4,
    title: "Metro 2033",
    authorId: 2,
    type: "PostApo"
  ),
  Book(
    bookId: 5,
    title: "Metro 2034",
    authorId: 2,
    type: "PostApo"
  ),
  Book(
    bookId: 6,
    title: "Metro 2035",
    authorId: 2,
    type: "PostApo"
  ),

  Book(
    bookId: 7,
    title: "From",
    authorId: 3,
    type: "Horror"
  ),
  Book(
    bookId: 8,
    title: "IT",
    authorId: 3,
    type: "Horror"
  ),
];