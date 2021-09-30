import 'package:flutter/material.dart';
//import 'package:release/Model/user.dart';
import 'package:release/Screens/profile.dart';
import 'package:release/Screens/settings.dart';
import 'package:release/Screens/start_page.dart';
//import 'package:release/Screens/user_details.dart';
//import 'package:release/Services/user_service.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    StartPage(),
    SettingsScreen(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[50],
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blue[400],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.blue[400],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue[400],
          )
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
