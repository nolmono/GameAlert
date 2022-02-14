// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String button;

  Button(this.button);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      child: RaisedButton(
        textColor: Colors.black,
        color: Colors.white,
        onPressed: () => null,
        child: Text(button),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
