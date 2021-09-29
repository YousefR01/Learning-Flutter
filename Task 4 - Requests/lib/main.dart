import 'package:flutter/material.dart';
//import 'package:navigation/Screens/home_page.dart';
import 'package:requests/Screens/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(),
      home: const UserScreen(),
    );
  }
}
