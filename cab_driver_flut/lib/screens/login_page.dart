import 'dart:ui';

import 'package:cab_driver_flut/screens/signup_page.dart';
import 'package:cab_driver_flut/widgets/button_log_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const String id = 'login_page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 70.0),
                  Image(
                    alignment: Alignment.center,
                    image: AssetImage('images/dogmonaut.png'),
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Brand-Bold', fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email Adresss',
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ButtonLogWidget(
                          labelText: 'Login',
                          clickAction: () {
                            print('login clicked');
                          },
                          registerType: true,
                          routeNav: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, SignupPage.id, (route) => false);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
