import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String pictureURL;

  UserModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.pictureURL});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: CircleAvatar(
        radius: 20.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage('$pictureURL')
      ),
      title: Center(
        child: Column(
          children: [
            Text(
              "$firstName $lastName",
              style: const TextStyle(fontSize: 19.0),
            ),
            Text(
              email,
              style: const TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
