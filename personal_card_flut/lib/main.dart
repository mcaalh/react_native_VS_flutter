import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                foregroundImage: AssetImage('images/bool.jpg'),
              ),
              Text(
                "@mcaalh",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Developper',
                style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white54,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    '+33 6 85 86 34 53',
                    style: TextStyle(
                        fontFamily: 'Roboto', color: Colors.redAccent),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    'mcaalh@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Roboto', color: Colors.redAccent),
                  ),
                ),
              ),
              // Container(
              //   color: Colors.blueAccent,
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.phone,
              //         color: Colors.white,
              //       ),
              //       Text(
              //         '+33 85 86 34 53',
              //         style: TextStyle(
              //             fontFamily: 'Roboto', color: Colors.amber[400]),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
