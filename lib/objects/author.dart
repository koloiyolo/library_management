class Author {
  int authorId;
  String name;
  String surname;

  Author({required this.authorId, required this.name, required this.surname});

  String get(){
      return "$name $surname";
    }
}
int findAuthorId(String name, String surname){
  for(var a in authorList){
    if(a.name == name){
      if(a.surname == surname){
        return a.authorId;
      }
    }
  }
  createAuthor(name, surname);
  return authorList.length;
}

void createAuthor(String name, String surname){
  authorList.add(Author(authorId: authorList.length, name: name, surname: surname));
}

List<Author> authorList = [

  Author(
    authorId: 1, 
    name: "John Ronald Reul", 
    surname: "Tolkien"
    ),

  Author(
    authorId: 2, 
    name: "Dimytrii", 
    surname: "Gluchowsky"
    ),
  Author(
    authorId: 3, 
    name: "Stephen", 
    surname: "King"
    ),
];
