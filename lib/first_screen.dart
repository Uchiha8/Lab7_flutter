import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  //place the url
  get url_ => 'https://randomuser.me/api/?results=20';

  //save the users from url to users list
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of something'),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index){
            final user = users[index];
            final first_name = user['name']['first'];
            return ListTile(
              title: Text(first_name),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: fetch,
        ),
      );
  }

  void fetch() async {
    final uri = Uri.parse(url_);
    final response = await http.get(uri);

    String body = '';

    //if successfull
    if(response.statusCode == 200){
      body = response.body;
      print(body);
      //decode json and save to jsonData
      final json_data = jsonDecode(body);

      //TODO: once you are trying to set up Model as List<Users> instead of List<dynamic>
      //you should consider the steps performed in the lecture, where we:
      /*
      final results = json_data['results'] as List<dynamic>;
      final converted = resutls.map((user) {
        return User(
          email: user['email'],
          gender: gender['gender'],
          //and etc.. fulfill all the requred data members prepared in your Model
          //Note that for some such as name and picture you will need slightly different approach
          //as they can also be regarded as classes
        );

      }).toList();
       */

      setState(() {
        users = json_data['results'];
      });

    }
  }
}
