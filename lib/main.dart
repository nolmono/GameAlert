import 'package:flutter/material.dart';
import './button.dart';
import './containInfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GameAlert'),
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          color: Colors.blue[900],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(19, 23, 19, 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Center(
                  //   //  search bar : https://www.youtube.com/watch?v=26aYqtOTRU4
                  // ),
                  Row(
                    children: [
                      Button('New Realease'),
                      Button('Most Popular'),
                    ],
                  ),
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
