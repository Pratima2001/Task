import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sagatask/Detailbook.dart';

class EpisodeResume extends StatelessWidget {
  a(String a, String b) {
    return ListTile(
      leading: Container(
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey),
      ),
      title: Text(
        " $a ",
        style: TextStyle(fontSize: 16, fontFamily: "Montserrat"),
      ),
      minVerticalPadding: 20,
      subtitle: Transform.translate(
        offset: Offset(0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "14.1k",
              style: TextStyle(fontFamily: "Montserrat"),
            ),
            RichText(
                text: TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                Icons.bookmark_border,
                color: Colors.grey,
                size: 20,
              )),
              TextSpan(
                  text: "5.6k",
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            ])),
            RichText(
                text: TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                Icons.file_download,
                color: Colors.grey,
                size: 20,
              )),
              TextSpan(
                  text: "3.9k",
                  style: TextStyle(color: Colors.black54, fontSize: 15)),
            ]))
          ],
        ),
      ),
      trailing: Transform.translate(
          offset: Offset(0, 15),
          child: Text(
            "$b",
            style: TextStyle(fontFamily: "Montserrat"),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 930,
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.grey[200],
                    elevation: 0,
                    leading: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.file_download,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          
                        },
                      )
                    ],
                  ),
                  Container(
                    height: 250,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          child: Card(
                            elevation: 1.0,
                            color: Colors.white,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration:
                                  BoxDecoration(color: Color(0xffBEC2CE)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.white, Colors.grey[200]],
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight)),
                              margin: EdgeInsets.only(top: 5),
                              padding: EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Desvendando Princesas",
                                    style: TextStyle(
                                        fontSize: 22, fontFamily: "Montserrat"),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "14.1k",
                                        style:
                                            TextStyle(fontFamily: "Montserrat"),
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        WidgetSpan(
                                            child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.grey,
                                          size: 20,
                                        )),
                                        TextSpan(
                                            text: "5.6k",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 17)),
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        WidgetSpan(
                                            child: Icon(
                                          Icons.file_download,
                                          color: Colors.grey,
                                          size: 20,
                                        )),
                                        TextSpan(
                                            text: "5.6k",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15)),
                                      ]))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/flower.png"),
                                  maxRadius: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Flower Books",
                                  style: TextStyle(
                                      fontFamily: "Montserrat", fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RatingBar.builder(
                                itemSize: 25,
                                initialRating: 1,
                                maxRating: 5,
                                itemBuilder: (context, i) => Icon(
                                      Icons.star,
                                      color: Color(0xffFF9D2B),
                                    ),
                                onRatingUpdate: (r) {}),
                          ],
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Infor",
                          style:
                              TextStyle(fontSize: 17, fontFamily: "Montserrat"),
                        ),
                        VerticalDivider(),
                        Text(
                          "Episode",
                          style:
                              TextStyle(fontSize: 17, fontFamily: "Montserrat"),
                        ),
                        VerticalDivider(),
                        Text(
                          "Review",
                          style:
                              TextStyle(fontSize: 17, fontFamily: "Montserrat"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detailbook()));
                            },
                            child: a("Preview", "2:14")),
                        Divider(),
                        a("Ep 1:  Destiny", "30:25"),
                        Divider(),
                        a("Ep 2: Game of Darkness", "30:25"),
                        Divider(),
                        a("Ep 3: Andora Icelands", "1:25:00"),
                        Divider(),
                        ListTile(
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey),
                          ),
                          title: Text(
                            " Ep 2: Game of Darkness ",
                            style: TextStyle(
                                fontSize: 16, fontFamily: "Montserrat"),
                          ),
                          minVerticalPadding: 20,
                          trailing: Icon(Icons.play_circle_fill),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
