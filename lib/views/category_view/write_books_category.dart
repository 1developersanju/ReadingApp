import 'package:flutter/material.dart';
import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/views/write_article_view.dart';

class WriteBooks extends StatelessWidget {
  const WriteBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  print("add items");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PublicationView()),
                  );
                },
                child: Icon(
                  Icons.add_circle_outline,
                  color: ThemeClr,
                  size: size.height * 0.09,
                )),
            SizedBox(
              height: 12,
            ),
            Text("Write and publish your Publications"),
          ],
        ),
      ),
    );
  }
}
