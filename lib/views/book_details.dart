import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/resource/widgets.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/mermaid.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
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
                              "The Little memaid",
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
                                  "Fairy Tales",
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
                        Text(
                          "“The Little Mermaid” is a fairy tale written by the Danish author Hans Christian Andersen. The story follows the journey of a young mermaid who is willing to give up her life in the sea as a mermaid to gain a human soul. The tale was first published in 1837 as part of a collection of fairy tales for children.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            letterSpacing: 0.6,
                            wordSpacing: 0.6,
                          ),
                        ),
                        SizedBox(
                          height: 80,
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
                                child: Text(
                                  "Read Book",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 18),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: greyColor, width: 2),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Text(
                                  "More info",
                                  style: TextStyle(
                                      color: greyColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
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
