import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/resource/widgets.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final String imgAssetPath, title, description, categorie;
  BookDetails(
      {required this.description,
      required this.title,
      required this.categorie,
      required this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.amber,
              child: Image.asset(
                imgAssetPath,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),

            /////
            ///
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.6),
                padding: EdgeInsets.only(
                  top: size.height * 0.1,
                  left: kDefaultPaddin / 2,
                  right: kDefaultPaddin,
                  bottom: kDefaultPaddin * 0.5,
                ),
                decoration: BoxDecoration(
                  color: lightbackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 21),
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                StarRating(
                                  rating: 5,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  categorie,
                                  style:
                                      TextStyle(color: darkGreen, fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: size.height * 0.2,
                          child: Text(
                            description,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              letterSpacing: 0.6,
                              wordSpacing: 0.6,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 18),
                                decoration: BoxDecoration(
                                    color: darkGreen,
                                    borderRadius: BorderRadius.circular(12)),
                                child: GestureDetector(
                                  child: Text(
                                    "Read Book",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onTap: () {
                                    print("tapped read book");
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Pdf_View(
                                                 
                                    //             )));
                                  },
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   width: 20,
                            // ),
                            // Expanded(
                            //   child: Container(
                            //     alignment: Alignment.center,
                            //     padding: EdgeInsets.symmetric(vertical: 18),
                            //     decoration: BoxDecoration(
                            //         border:
                            //             Border.all(color: greyColor, width: 2),
                            //         borderRadius: BorderRadius.circular(12)),
                            //     child: Text(
                            //       "More info",
                            //       style: TextStyle(
                            //           color: greyColor,
                            //           fontSize: 18,
                            //           fontWeight: FontWeight.w600),
                            //     ),
                            //   ),
                            // )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
