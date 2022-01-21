import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reading_app/resource/colors.dart';

class PublicationView extends StatefulWidget {
  const PublicationView({Key? key}) : super(key: key);

  @override
  _PublicationViewState createState() => _PublicationViewState();
}

class _PublicationViewState extends State<PublicationView> {
  final _formKey = GlobalKey<FormState>();
  String _title = "";
  String _article = "";
  String _discription = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: darkGreen,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Publish your Writicle",
                  style: TextStyle(
                    fontSize: size.height * 0.028,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              labelText: "Title",
                              labelStyle: TextStyle(
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (input) => input!.trim().isEmpty
                                ? "Please enter a Task Title"
                                : null,
                            onSaved: (input) => _title = input!,
                            initialValue: _title,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            style: TextStyle(fontSize: 18),
                            maxLines: 20,
                            decoration: InputDecoration(
                              labelText: "Content",
                              labelStyle: TextStyle(
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (input) => input!.trim().isEmpty
                                ? "Please enter a Task Title"
                                : null,
                            onSaved: (input) => _article = input!,
                            initialValue: _article,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            style: TextStyle(fontSize: 18),
                            maxLines: 10,
                            decoration: InputDecoration(
                              labelText: "Discription",
                              labelStyle: TextStyle(
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (input) => input!.trim().isEmpty
                                ? "Please enter a Task Title"
                                : null,
                            onSaved: (input) => _discription = input!,
                            initialValue: _discription,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: darkGreen,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextButton(
                            onPressed: () async {
                              print("_article");
                             // dialoguebutton();
                              Timer(Duration(seconds: 1), () {
                                // 5 seconds over, navigate to Page2.
                                Navigator.pop(context);
                              });
                            },
                            child: Text(
                              "Publish",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void dialoguebutton() {
  //   Dialogs.materialDialog(
  //       msg: 'Confirm to Publish',
  //       title: "Delete",
  //       color: Colors.white,
  //       context: context,
  //       actions: [
  //         IconsOutlineButton(
  //           onPressed: () {
  //             Navigator.of(context, rootNavigator: true).pop();
  //           },
  //           text: 'Cancel',
  //           iconData: Icons.cancel_outlined,
  //           textStyle: TextStyle(color: Colors.grey),
  //           iconColor: Colors.grey,
  //         ),
  //         IconsButton(
  //           onPressed: () async {
  //             Timer(Duration(seconds: 1), () {
  //               // 5 seconds over, navigate to Page2.
  //               Navigator.pop(context);
  //             });
  //           },
  //           text: 'Confirm',
  //           iconData: Icons.done,
  //           color: Colors.red,
  //           textStyle: TextStyle(color: Colors.white),
  //           iconColor: Colors.white,
  //         ),
  //       ]);
  // }
}
