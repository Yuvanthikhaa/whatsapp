//import 'dart:html';
//import 'dart:ui';
import 'dart:core';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/ic.dart';

import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
//import 'package:iconify_flutter/icons/zondicons.dart';
//import 'package:colorful_iconify_flutter/icons/emojione.dart'; // for Colorful Icons
// for Non Colorful Icons

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tcontrol;
  //late DateTime noww;
  //late int hour;
  //late int min;
  final List items = [
    Icon(
      Icons.archive,
      color: Color(0xFF777777),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage("assets/bojack.jpg"),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage("assets/diane.jpg"),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage("assets/batsy.jpg"),
    ),
  ];
  final List list2 = [
    "",
    "this doesn't matter. nothing matters",
    "Why cant i be happy? am i busted?",
    "I am the shadows"
  ];
  final List hour = ["", "13", "12", "12"];
  final List min = ["", "49", "30", "27"];
  final List listt = ["Archived", "Bojack", "Diane", "Batman"];
  void initState() {
    //hour = noww.hour;
    // min = noww.minute;
    _tcontrol = new TabController(length: 4, vsync: this);
  }

  //int min = noww.minute;
  //bool isTapped = false;

  /*void _handleTap() {
    setState(() {
      isTapped = !isTapped;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 52, 67),
        title: Text("WhatsApp",
            textAlign: TextAlign.left,
            style: TextStyle(color: Color(0xFF777777))),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Color(0xFF777777),
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
          Icon(
            Icons.search,
            color: Color(0xFF777777),
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
          Icon(
            Icons.more_vert,
            color: Color(0xFF777777),
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
        ],
        bottom: TabBar(
            labelColor: Color(0xFF1EBEA5),
            unselectedLabelColor: Colors.grey,
            controller: _tcontrol,
            indicatorColor: Color(0xFF1EBEA5),
            tabs: [
              Tab(
                child: // IconButton(
                    //icon:
                    Iconify(
                  Ic.sharp_groups,
                  size: 25,
                  color: Color(0xFF777777),
                  //color: Colors.grey,
                  //color: isTapped ? Color(0xFF1EBEA5) : Colors.grey,
                ),
                // onPressed: _handleTap,
                //),
              ),
              Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(),
                ),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              )
            ]),
      ),
      body: Container(
        color: Color(0xFF0060606),
        child: TabBarView(controller: _tcontrol, children: [
          Center(
            child: Text(
              "business stuff",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListView.builder(
            itemCount: listt.length,
            itemBuilder: (context, index) {
              return ListBody(
                children: [
                  ListTile(
                    leading: Column(children: [
                      Padding(padding: EdgeInsets.only(top: 13)),
                      items[index],
                    ]),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(padding: EdgeInsets.only(left: 50)),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          listt[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          list2[index],
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          hour[index] + ":" + min[index],
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          Center(
            child: Text(
              "status",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Center(
            child: Text(
              "calls",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ]),
      ),
    ));
  }

  // List<dynamic> get image => items;
}
/*            color: Color(0xFF777777),
*/