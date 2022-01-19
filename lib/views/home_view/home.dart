import 'package:firebase_auth/firebase_auth.dart';
import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/views/category_view/all_books_category.dart';
import 'package:reading_app/views/category_view/write_books_category.dart';
import 'package:reading_app/views/category_view/your_books_category.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightbackground,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Hi  ${user.displayName},",
                        style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                      // Image.asset(
                      //   "assets/search.png",
                      // ),
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(user.photoURL!),
                      ),

                      // IconButton(
                      //     onPressed: () {}, icon: Icon(Icons.notifications)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Card(
                  child: Container(
                    height: size.height * 0.20,
                    child: Image.asset(
                      "assets/banner.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //Categories(),
                navigationButtons(),
                stackedContainers(),
                //  AllBooks(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  ///
  Widget stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          AllBooks(),
          YourBook(),
          WriteBooks(),
        ],
      ),
    );
  }

  ///
  ///
  Widget navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                child: Text(
                  'All Books',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    color: index == 0 ? kTextColor : kTextLightColor,
                  ),
                ),
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
              ),
              Container(
                margin:
                    EdgeInsets.only(top: kDefaultPaddin * 0.02), //top padding 5
                height: 2.8,
                width: 30,
                color: index == 0 ? darkGreen : Colors.transparent,
              )
            ],
          ),
        ),
        Column(
          children: [
            GestureDetector(
              child: Text(
                'Your Publications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: index == 1 ? kTextColor : kTextLightColor,
                ),
              ),
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
            ),
            Container(
              margin:
                  EdgeInsets.only(top: kDefaultPaddin * 0.02), //top padding 5
              height: 2.8,
              width: 30,
              color: index == 1 ? darkGreen : Colors.transparent,
            )
          ],
        ),
        Column(
          children: [
            GestureDetector(
              child: Text(
                'Publications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: index == 2 ? kTextColor : kTextLightColor,
                ),
              ),
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
            ),
            Container(
              margin:
                  EdgeInsets.only(top: kDefaultPaddin * 0.02), //top padding 5
              height: 2.8,
              width: 30,
              color: index == 2 ? darkGreen : Colors.transparent,
            )
          ],
        ),
      ],
    );
  }
}
