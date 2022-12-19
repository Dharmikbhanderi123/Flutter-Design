import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'abcde.dart';

// ignore: camel_case_types
class Newdemo extends StatelessWidget {
  Newdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage5(),
    );
  }
}

class MyHomePage5 extends StatefulWidget {
  const MyHomePage5({Key? key}) : super(key: key);

  @override
  _MyHomePage5State createState() {
    return _MyHomePage5State();
  }
}

class _MyHomePage5State extends State<MyHomePage5> {
  late SharedPreferences prefs;
  TextEditingController names = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController age = TextEditingController();

  String name = "";
  String mobile = "";
  String ages = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter SharedPreferences"),
      ),
      body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: names,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Name',
                ),
              ),

              TextField(
                controller: mobileno,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Mobile No',
                ),
              ),

              TextField(
                controller: age,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Age',
                ),
              ),
              // Text(
              //   name,
              //   style: const TextStyle(fontSize: 20),
              // ),
              const SizedBox(
                height: 30,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                mobile,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                ages,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const Text("Save"),
                onPressed: () {
                  save();
                },
              ),
              ElevatedButton(
                child: const Text("retrieve"),
                onPressed: () {
                  retrieve();
                },
              ),
              // ElevatedButton(
              //   child: const Text("Delete"),
              //   onPressed: () {
              //     delete();
              //   },
              // ),
            ],
          )),
    );
  }

  save() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString("username", names.text.toString());
    prefs.setString("mobileno", mobileno.text.toString());
    prefs.setString("age", age.text.toString());
  }

  retrieve() async {
    prefs = await SharedPreferences.getInstance();
    name = prefs.getString("username")!;
    mobile = prefs.getString("mobileno")!;
    ages = prefs.getString("age")!;

    setState(() {});
  }

  // delete() async {
  //   prefs = await SharedPreferences.getInstance();
  //   prefs.remove("username");
  //   name = "";
  //   setState(() {});
  // }
}
