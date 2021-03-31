import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 70.0),
            Image(
              alignment: Alignment.center,
              image: AssetImage('images/dogmonaut.png'),
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
