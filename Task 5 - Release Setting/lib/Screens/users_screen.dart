// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:release/Model/user.dart';
import 'package:release/Screens/user_details.dart';
import 'package:release/Services/user_service.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<User> userList = [];
  bool isLoading = true;

  getUserList() async {
    userList = await UserService().getUser();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: userList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      userList[index].name,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.people,
                  ),
                  enabled: true,
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserDetails(),
                            settings: RouteSettings(
                              arguments: userList[index],
                            )))
                  },
                );
              },
            ),
    );
  }
}
