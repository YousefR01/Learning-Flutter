// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:release/Model/user.dart';
import 'package:release/utils.dart';

class UserDetails extends StatefulWidget {
  User user;
  UserDetails({this.user});
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text(
                  "User Details",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 1000,
          margin: EdgeInsets.all(15),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Hello!',
                  style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    backgroundColor: Colors.grey[300],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.user.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL(
                      "mailto:${widget.user.email}?subject=New Subject&body=New Email");
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Email: ${widget.user.email}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL("tel:${widget.user.phone}");
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Phone: ${widget.user.phone}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL("http://${widget.user.website}");
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Website: ${widget.user.website}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
