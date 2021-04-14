import 'dart:io';

import 'package:cab_driver_flut/screens/login_page.dart';
import 'package:cab_driver_flut/screens/main_page.dart';
import 'package:cab_driver_flut/screens/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? const FirebaseOptions(
            appId: '1:xxxxxxxxxxxxxxx',
            apiKey: 'AIzaSyCi9IBqiy-xxxxxxxxxxxxxxxxxxx',
            projectId: 'com.example.xxxxxxxxxxxxxxxxxxx',
            messagingSenderId: 'xxxxxxxxxxxxxxxxxxx',
            databaseURL:
                'https://v-cab-xxxxxxxxxxxxxxxxxxx-default-rtdb.firebaseio.com',
          )
        : const FirebaseOptions(
            appId: '1:xxxxxxxxxxxxxxxxxxx:android:xxxxxxxxxxxxxxxxxxx',
            apiKey: 'xxxxxxxxxxxxxxxxxxx',
            messagingSenderId: 'xxxxxxxxxxxxxxxxxxx',
            projectId: 'v-cab-xxxxxxxxxxxxxxxxxxx',
            databaseURL:
                'https://v-cab-xxxxxxxxxxxxxxxxxxx-default-rtdb.firebaseio.com',
          ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Brand-Regular',
        primarySwatch: Colors.blue,
      ),
      home: SignupPage(),
      initialRoute: SignupPage.id,
      routes: {
        SignupPage.id: (context) => SignupPage(),
        LoginPage.id: (context) => LoginPage(),
        MainPage.id: (context) => MainPage(),
      },
    );
  }
}
