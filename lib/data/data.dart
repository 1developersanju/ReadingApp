import 'package:reading_app/models/book_model.dart';
import 'package:reading_app/models/single_book_model.dart';
import 'package:reading_app/models/your_book_model.dart';

List<BookModel> getBooks() {
  List<BookModel> books = [];
  BookModel bookModel = BookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');

  //1
  bookModel.imgAssetPath = "assets/little_mermaid.jpg";
  bookModel.title = "The little mermaid";
  bookModel.description =
      '''“The Little Mermaid” is afairy tale written by the Danish author Hans Christian Andersen.''';
  bookModel.rating = 5;
  bookModel.categorie = "Fairy Tailes";

  books.add(bookModel);
  bookModel = new BookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');
//2
  bookModel.imgAssetPath = "assets/winnie_the_pooh.jpg";
  bookModel.title = "Winnie the Pooh";
  bookModel.description =
      '''“ Winnie-the-Pooh “ is a children’s book by English author A. A. Milne and English illustrator E. H. Shepard. Published in 1926.''';
  bookModel.rating = 5;
  bookModel.categorie = "Children's litrature";

  books.add(bookModel);
  bookModel = new BookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');

  //3
  bookModel.imgAssetPath = "assets/willow_of_fate.jpg";
  bookModel.title = "Willows Of Fate";
  bookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  bookModel.rating = 4;
  bookModel.categorie = "Drama";

  books.add(bookModel);
  bookModel = new BookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');

  return books;
}

///
///
///
///
///
List<SingleBookModel> getSingleBooks() {
  List<SingleBookModel> books = [];
  SingleBookModel singleBookModel = SingleBookModel(
      categorie: '', imgAssetPath: '', title: '', description: '');

  //1
  singleBookModel.imgAssetPath = "assets/the_book_thief.jpeg";
  singleBookModel.title = "The Book Thief";
  singleBookModel.categorie = "young adult fiction";
  singleBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  books.add(singleBookModel);

  singleBookModel = new SingleBookModel(
      categorie: '', imgAssetPath: '', title: '', description: '');

  //2
  singleBookModel.imgAssetPath = "assets/rich_dad_poor_dad.jpg";
  singleBookModel.title = "Rich dad poor dad";
  singleBookModel.categorie = "Non-fiction";
  singleBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  books.add(singleBookModel);

  singleBookModel = new SingleBookModel(
      categorie: '', imgAssetPath: '', title: '', description: '');

  //3
  singleBookModel.imgAssetPath = "assets/Harry Potter.jpeg";
  singleBookModel.title = "Harry Potter";
  singleBookModel.categorie = "Fantasy Fiction";
  singleBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  books.add(singleBookModel);

  singleBookModel = new SingleBookModel(
      categorie: '', imgAssetPath: '', title: '', description: '');

  //4
  singleBookModel.imgAssetPath = "assets/night_circus.jpg";
  singleBookModel.title = "Night Circus";
  singleBookModel.categorie = "Romance novel";
  singleBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  books.add(singleBookModel);

  singleBookModel = new SingleBookModel(
      categorie: '', imgAssetPath: '', title: '', description: '');

  //1
  singleBookModel.imgAssetPath = "assets/tales_from_the_road.jpg";
  singleBookModel.title = "Tales from the road";
  singleBookModel.categorie = "Budget Travel";
  singleBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  books.add(singleBookModel);

  singleBookModel = new SingleBookModel(
      categorie: '', imgAssetPath: '', title: '', description: '');

  return books;
}

///
///
///
///
List<YourBookModel> getYourBooks() {
  List<YourBookModel> books = [];
  YourBookModel yourBookModel = YourBookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');

  //1
  yourBookModel.imgAssetPath = "assets/BookTree.png";
  yourBookModel.title = "Your Book 1";
  yourBookModel.description = '''“The Little Mermaid” is a
fairy tale written by the Danish author Hans
Christian Andersen.''';
  yourBookModel.rating = 5;
  yourBookModel.categorie = "Fairy Tailes";

  books.add(yourBookModel);
  yourBookModel = new YourBookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');

  //2
  yourBookModel.imgAssetPath = "assets/BookTree.png";
  yourBookModel.title = "Your Book 2";
  yourBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  yourBookModel.rating = 4;
  yourBookModel.categorie = "Drama";

  books.add(yourBookModel);
  yourBookModel = new YourBookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');

  //3
  yourBookModel.imgAssetPath = "assets/BookTree.png";
  yourBookModel.title = "Your Book 3";
  yourBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  yourBookModel.rating = 3;
  yourBookModel.categorie = "Drama";

  books.add(yourBookModel);
  yourBookModel = new YourBookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');

  //4
  yourBookModel.imgAssetPath = "assets/BookTree.png";
  yourBookModel.title = "Your Book 4";
  yourBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  yourBookModel.rating = 5;
  yourBookModel.categorie = "Drama";

  books.add(yourBookModel);
  yourBookModel = YourBookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');
  //5
  yourBookModel.imgAssetPath = "assets/BookTree.png";
  yourBookModel.title = "Your Book 5";
  yourBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  yourBookModel.rating = 4;
  yourBookModel.categorie = "Drama";

  books.add(yourBookModel);
  yourBookModel = YourBookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');
  //6
  yourBookModel.imgAssetPath = "assets/BookTree.png";
  yourBookModel.title = "Your Book 6";
  yourBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  yourBookModel.rating = 2;
  yourBookModel.categorie = "Drama";

  books.add(yourBookModel);
  yourBookModel = YourBookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');
  //7
  yourBookModel.imgAssetPath = "assets/BookTree.png";
  yourBookModel.title = "Your Book 7";
  yourBookModel.description =
      '''Is there room in the hands of fate for free will?All her life, Desdemona has seen things others haven’t.''';
  yourBookModel.rating = 3;
  yourBookModel.categorie = "Drama";

  books.add(yourBookModel);
  yourBookModel = YourBookModel(
      categorie: '', description: '', imgAssetPath: '', rating: 5, title: '');

  return books;
}
