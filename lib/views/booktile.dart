import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/resource/widgets.dart';
import 'package:flutter/material.dart';

import 'book_details.dart';

class BooksTile extends StatelessWidget {
  final String imgAssetPath, title, description, categorie;
  final int rating;
  BooksTile(
      {required this.rating,
      required this.description,
      required this.title,
      required this.categorie,
      required this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BookDetails()));
      },
      child: Container(
        height: 200,
        margin: EdgeInsets.only(right: 16),
        alignment: Alignment.bottomLeft,
        child: Stack(
          children: <Widget>[
            Container(
              height: 180,
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: size.width - 80,
                  height: 140,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 110,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              description,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Spacer(),
                            Row(
                              children: <Widget>[
                                StarRating(
                                  rating: rating,
                                  
                                ),
                                Spacer(),
                                Text(
                                  categorie,
                                  style: TextStyle(
                                      color: darkGreen,
                                      fontSize: size.width * 0.026),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 180,
              margin: EdgeInsets.only(
                left: 12,
                top: 6,
              ),
              child: Image.asset(
                imgAssetPath,
                height: 150,
                width: 100,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// single book tile

class SingleBookTile extends StatelessWidget {
  final String title, categorie, imgAssetPath;
  SingleBookTile({required this.title, required this.categorie, required this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BookDetails()));
      },
      child: Container(
        width: 110,
        padding: EdgeInsets.only(right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imgAssetPath,
                  height: 170,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            Spacer(),
            Text(
              categorie,
              style: TextStyle(color: darkGreen, fontSize: 13),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
