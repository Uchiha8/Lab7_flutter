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
      final jsonData = jsonDecode(body);
      setState(() {
        users = jsonData['results'];
      });
    }
  }
}
