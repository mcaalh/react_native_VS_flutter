import 'dart:ui';

import 'package:cab_driver_flut/screens/login_page.dart';
import 'package:cab_driver_flut/widgets/button_log_widget.dart';
import 'package:cab_driver_flut/widgets/text_field_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  static const String id = 'signup_page';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      new GlobalKey<ScaffoldMessengerState>();

  void showSnackBar(String title) {
    final snackbar = SnackBar(
      content: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  void registerUser() async {
    print(passwordController.text);
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldKey,
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
                    'Create a new Rider\'s account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Brand-Bold', fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFieldWidget(
                          widgetController: fullNameController,
                          labelText: 'Full name',
                          hidden: false,
                        ),
                        TextFieldWidget(
                          widgetController: emailController,
                          labelText: 'Email Address',
                          keyboardType: TextInputType.emailAddress,
                          hidden: false,
                        ),
                        TextFieldWidget(
                          widgetController: phoneController,
                          labelText: 'Phone number',
                          keyboardType: TextInputType.phone,
                          hidden: false,
                        ),
                        TextFieldWidget(
                          widgetController: passwordController,
                          labelText: 'Password',
                          hidden: true,
                        ),
                        ButtonLogWidget(
                          labelText: 'Register',
                          clickAction: () {
                            if (fullNameController.text.length < 3) {
                              showSnackBar('please provide a valid Name');
                              return null;
                            }
                            if (!emailController.text.contains('@')) {
                              showSnackBar(
                                  'please provide a valid email address');
                              return null;
                            }
                            if (phoneController.text.length < 10) {
                              showSnackBar(
                                  'please provide a valid phone number');
                              return null;
                            }
                            if (passwordController.text.length < 8) {
                              showSnackBar(
                                  'password must be at least 8 characters');
                              return null;
                            }
                            return registerUser;
                          },
                          registerType: true,
                          routeNav: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, LoginPage.id, (route) => false);
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
