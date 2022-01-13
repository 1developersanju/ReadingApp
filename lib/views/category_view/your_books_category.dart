import 'package:reading_app/data/data.dart';
import 'package:reading_app/models/book_model.dart';
import 'package:reading_app/models/single_book_model.dart';
import 'package:reading_app/models/your_book_model.dart';
import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/views/booktile.dart';
import 'package:flutter/material.dart';

class YourBook extends StatefulWidget {
  const YourBook({ Key? key}) : super(key: key);

  @override
  State<YourBook> createState() => _YourBookState();
}

class _YourBookState extends State<YourBook> {
  List<YourBookModel> myBooks = [];

  @override
  void initState() {
    //   // ignore: todo
    //   // TODO: implement initState
    super.initState();

    myBooks = getYourBooks();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: ListView.builder(
                itemCount: myBooks.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return BooksTile(
                    imgAssetPath: myBooks[index].imgAssetPath,
                    rating: myBooks[index].rating,
                    title: myBooks[index].title,
                    description: myBooks[index].description,
                    categorie: myBooks[index].categorie,
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
