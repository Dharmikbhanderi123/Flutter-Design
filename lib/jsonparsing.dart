import 'dart:convert';
// ignore: unused_import
import 'dart:ui';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

class apicall2 extends StatelessWidget {
  const apicall2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'apidata',
      debugShowCheckedModeBanner: false,
      home: jsonparsing(),
    );
  }
}

// ignore: camel_case_types
class jsonparsing extends StatefulWidget {
  const jsonparsing({Key? key}) : super(key: key);
  @override
  State<jsonparsing> createState() => _jsonparsingState();
}

// ignore: camel_case_types
class _jsonparsingState extends State<jsonparsing> {
  Future getUserData() async {
    var response =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u["name"], u["email"], u["username"]);
      users.add(user);
    }
    // ignore: avoid_print
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Calling'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Card(
            child: FutureBuilder(
                future: getUserData(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    // ignore: avoid_unnecessary_containers
                    return Container(
                      child: const Center(
                        child: Text('Loading....'),
                      ),
                    );
                  } else
                    // ignore: curly_braces_in_flow_control_structures
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, i) {
                          return ListTile(
                            title: Text(snapshot.data[i].name),
                            subtitle: Text(snapshot.data[i].username),
                            trailing: Text(snapshot.data[i].email),
                          );
                        });
                })),
      ),
    );
  }
}

class User {
  final String name, email, username;
  User(this.name, this.email, this.username);
}
