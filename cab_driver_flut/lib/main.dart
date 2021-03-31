import 'dart:io';

import 'package:cab_driver_flut/screens/mainpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? const FirebaseOptions(
            appId: '1:696001866695:ios:458e49da9e16b6763347e2',
            apiKey: 'AIzaSyCi9IBqiy-wFnCnrSeO2gm874GOgmJwAS0',
            projectId: 'com.example.cabDriverFlut',
            messagingSenderId: '696001866695',
            databaseURL: 'https://v-cab-b9d8d-default-rtdb.firebaseio.com',
          )
        : const FirebaseOptions(
            appId: '1:696001866695:android:5824075e0f8a43043347e2',
            apiKey: 'AIzaSyCzukp6zbme80i8SPDX1poXaRyO07vANbQ',
            messagingSenderId: '696001866695',
            projectId: 'v-cab-b9d8d',
            databaseURL: 'https://v-cab-b9d8d-default-rtdb.firebaseio.com',
          ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Brand-Regular',
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
