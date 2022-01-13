import 'package:reading_app/data/data.dart';
import 'package:reading_app/models/book_model.dart';
import 'package:reading_app/models/single_book_model.dart';
import 'package:reading_app/models/your_book_model.dart';
import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/views/booktile.dart';
import 'package:flutter/material.dart';
import 'package:reading_app/views/category_view/your_books_category.dart';

class AllBooks extends StatefulWidget {
  const AllBooks({Key? key}) : super(key: key);

  @override
  State<AllBooks> createState() => _AllBooksState();
}

class _AllBooksState extends State<AllBooks> {
  List<BookModel> books = [];
  List<SingleBookModel> singleeBooks = [];
  List<YourBookModel> yourBooks = [];

  @override
  void initState() {
    //   // ignore: todo
    //   // TODO: implement initState
    super.initState();

    books = getBooks();
    singleeBooks = getSingleBooks();
    yourBooks = getYourBooks();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            child: ListView.builder(
                itemCount: books.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return BooksTile(
                    imgAssetPath: books[index].imgAssetPath,
                    rating: books[index].rating,
                    title: books[index].title,
                    description: books[index].description,
                    categorie: books[index].categorie,
                  );
                }),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Student's Collection",
            style: TextStyle(
                color: kTextColor, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 250,
            child: ListView.builder(
                itemCount: yourBooks.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return SingleBookTile(
                    title: yourBooks[index].title,
                    categorie: yourBooks[index].categorie,
                    imgAssetPath: yourBooks[index].imgAssetPath,
                  );
                }),
          ),
          Text(
            "You may also like",
            style: TextStyle(
                color: kTextColor, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 250,
            child: ListView.builder(
                itemCount: singleeBooks.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return SingleBookTile(
                    title: singleeBooks[index].title,
                    categorie: singleeBooks[index].categorie,
                    imgAssetPath: singleeBooks[index].imgAssetPath,
                  );
                }),
          )
        ],
      ),
    );
  }
}
