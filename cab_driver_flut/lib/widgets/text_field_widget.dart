import 'dart:ui';

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    this.keyboardType,
    @required this.labelText,
    @required this.hidden,
    @required this.widgetController,
  });

  final TextInputType keyboardType;
  final String labelText;
  final bool hidden;
  final TextEditingController widgetController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: widgetController,
        obscureText: hidden,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 14.0),
          hintStyle: TextStyle(color: Colors.grey, fontSize: 10.0),
        ),
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      margin: EdgeInsets.only(
        bottom: 10,
      ),
    );
  }
}
