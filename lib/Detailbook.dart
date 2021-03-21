import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class Detailbook extends StatelessWidget {
  showbook(context) async {
    EpubViewer.setConfig(
        themeColor: Theme.of(context).primaryColor,
        identifier: "iosBook",
        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
        allowSharing: true,
        enableTts: true,
        nightMode: false);
    await EpubViewer.openAsset(
      'assets/Testdocx.epub',
      lastLocation: EpubLocator.fromJson({
        "bookId": "2239",
        "href": "/OEBPS/ch06.xhtml",
        "created": 1539934158390,
        "locations": {"cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"}
      }),
    );
    // get current locator
    EpubViewer.locatorStream.listen((locator) {
      print('LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(selectedItemColor: Colors.black, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text("Discover")),
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_view), title: Text("Library"))
      ]),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: Colors.grey),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                  flex: 1,
                )
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, MediaQuery.of(context).size.height / 2 - 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/heart.png",
                  width: 30,
                  height: 30,
                ),
                Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.white54,
                )
              ],
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Transform.translate(
                    offset: Offset(20, 20),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios)),
                  ),
                  Transform.translate(
                    offset:
                        Offset(0, MediaQuery.of(context).size.height / 2 - 240),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () async {
                                showbook(context);
                              },
                              child: Text("The Camp",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold))),
                          Text(
                            "\nBy John",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Rating",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Page",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Views",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "5.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("220",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("1728",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, MediaQuery.of(context).size.height / 2),
                    child: Container(
                      height: 1200,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: FlatButton(
                                minWidth: 180,
                                height: 50,
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                onPressed: () async {
                                  showbook(context);
                                },
                                child: Text(
                                  "Buy For Rs 62.8",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                color: Colors.pinkAccent,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "\nSummery",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              )),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            '"I heared you."\n "It was a slight little misunderstanding"\n"You had a fight.\n""We made up this morning."I concede, knowing\n that we could argue about the meaning of a fight \n for the entire two hours of Kiki-time.\n She shovels a few more spoonfuls into her mouth \n before She goes on "I avoid like it when you fight."\n"I avoid like it either But every married couple fights\n from time to time, sweetie. It blows over quickly."\n I love Mommy and she loves me " Althrough we haven\'t actually said it to each other in a while. "Well,avoid fight anymore khai cried whole night."',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              maxRadius: 35,
                            ),
                            title: Text("Carlos Day",
                                style: TextStyle(fontFamily: "Montserrat")),
                            subtitle: Text("5 Days ago."),
                          ),
                          Text(
                            "   Love it !!!\n   I have a chance to my knowledge. Thank",
                            style: TextStyle(
                                fontFamily: "Montserrat", fontSize: 15),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              maxRadius: 35,
                            ),
                            title: Text("Carlos Day",
                                style: TextStyle(fontFamily: "Montserrat")),
                            subtitle: Text("5 Days ago."),
                          ),
                          Text(
                            "   Love it !!!\n   I have a chance to my knowledge. Thank",
                            style: TextStyle(
                                fontFamily: "Montserrat", fontSize: 15),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                  maxRadius: 35,
                                  backgroundImage:
                                      AssetImage("assets/images/flower.png")),
                              title: Text(
                                'Flower Books',
                                style: TextStyle(fontSize: 20),
                              ),
                              dense: true,
                              subtitle: Stack(
                                children: [
                                  FlatButton(
                                    onPressed: () {
                                      showbook(context);
                                    },
                                    color: Colors.grey,
                                    shape: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Follow",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    minWidth: 120,
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
