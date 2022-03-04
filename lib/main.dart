import 'package:flutter/material.dart';
import './button.dart';
import './containInfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue, //app backgroud color
        appBar: AppBar(
          title: const Text('GameAlert'), //The app bar title
          backgroundColor: Colors.blue[900], // app bar bg
          elevation: 0,
        ),
        // The app body
        body: Container(
          color: Colors.blue[900],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // The search feature but I put only the container for UI visible
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    width: 400,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white),
                  ),
                  // Center(
                  //   //  search bar : https://www.youtube.com/watch?v=26aYqtOTRU4
                  // ),
                  //

                  // Button for The New Realease feature & Most Popular feature
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Button('New Realease'),
                      Button('Most Popular'),
                    ],
                  ),

                  // The information of game card. calling from containinfo.dart
                  Row(
                    children: [
                      Information(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
