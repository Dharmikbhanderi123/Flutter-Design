import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class apicall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practise app",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  getApiData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    Response respons = await get(url);
    print(respons.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "practise app",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
            child: Column(
          children: [
            const Text('Text'),
            TextButton(
                onPressed: () {
                  getApiData();
                },
                child: const Text('call api')),
          ],
        )));
  }
}
