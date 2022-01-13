import 'package:reading_app/data/data.dart';
import 'package:reading_app/models/book_model.dart';
import 'package:reading_app/models/single_book_model.dart';
import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/views/booktile.dart';
import 'package:flutter/material.dart';

class AllBooks extends StatefulWidget {
  const AllBooks({Key? key}) : super(key: key);

  @override
  State<AllBooks> createState() => _AllBooksState();
}

class _AllBooksState extends State<AllBooks> {
  List<BookModel> books = [];
  List<SingleBookModel> singleeBooks = [];

  @override
  void initState() {
    //   // ignore: todo
    //   // TODO: implement initState
    super.initState();

    books = getBooks();
    singleeBooks = getSingleBooks();
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
        ],
      ),
    );
  }
}
