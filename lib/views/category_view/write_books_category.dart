import 'package:flutter/material.dart';

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
                },
                child: Icon(
                  Icons.add_circle_outline_rounded,
                  size: size.height * 0.09,
                )),
            SizedBox(
              height: 12,
            ),
            Text("Write Your Own Books"),
          ],
        ),
      ),
    );
  }
}
