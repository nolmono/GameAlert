// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String button;

  Button(this.button);

  @override
  Widget build(BuildContext context) {
    return Container(
      //button
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.all(10.10),
      child: RaisedButton(
        textColor: Colors.black,
        color: Colors.white,
        onPressed: () => null, //to the game download page
        child: Text(button),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
