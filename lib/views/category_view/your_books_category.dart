import 'package:reading_app/data/data.dart';
import 'package:reading_app/models/your_book_model.dart';
import 'package:reading_app/views/home_view/booktile.dart';
import 'package:flutter/material.dart';

class YourBook extends StatefulWidget {
  const YourBook({Key? key}) : super(key: key);

  @override
  State<YourBook> createState() => _YourBookState();
}

class _YourBookState extends State<YourBook> {
  List<YourBookModel> myBooks = [];

  @override
  void initState() {
    //   // ignore: todo
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
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView.builder(
                  itemCount: myBooks.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        BooksTile(
                          imgAssetPath: myBooks[index].imgAssetPath,
                          rating: myBooks[index].rating,
                          title: myBooks[index].title,
                          description: myBooks[index].description,
                          categorie: myBooks[index].categorie,
                        ),
                        Divider()
                      ],
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
