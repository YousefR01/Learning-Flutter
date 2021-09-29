// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:requests/Model/user.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.grey[200],
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "ID: ${data.id}.\nName: ${data.name}.\nUserName: ${data.username}.\nEmail: ${data.email}.\nPhone: ${data.phone}.\nCity: ${data.address.city}.\nSuite: ${data.address.suite}.\nStreet: ${data.address.street}.\nZipcode: ${data.address.zipcode}.\nGeo: ${data.address.geo}.\nWebsite: ${data.website}.\nCompany Name: ${data.company.name}.\nCompany catchPhrase: ${data.company.catchPhrase}.\nCompany bs: ${data.company.bs}.",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.1,
                            wordSpacing: 2,
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}
