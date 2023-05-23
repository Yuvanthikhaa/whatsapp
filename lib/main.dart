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
  void initState() {
    _tcontrol = new TabController(length: 4, vsync: this);
  }

  bool isTapped = false;

  void _handleTap() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 52, 67),
          title: Text("WhatsApp",
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xFFD0E9EA))),
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
                  child: InkWell(
                    child: IconButton(
                      icon: Iconify(
                        Ic.sharp_groups,
                        size: 25,
                        //color: Colors.grey,
                        color: isTapped ? Color(0xFF1EBEA5) : Colors.grey,
                      ),
                      onPressed: _handleTap,
                    ),
                  ),
                ),
                Tab(
                  child: Text("Chats"),
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
          color: Color(0xFFEDF8F5),
        ),
      ),
    );
  }
}
