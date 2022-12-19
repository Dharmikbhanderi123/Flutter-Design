import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class Newdemo1 extends StatelessWidget {
  Newdemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const pages(),
    );
  }
}

class pages extends StatefulWidget {
  const pages({Key? key}) : super(key: key);

  @override
  _pagesState createState() {
    return _pagesState();
  }
}

class _pagesState extends State<pages> {
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
            child: Column(children: [retrieve()])));
  }

  retrieve() async {
    prefs = await SharedPreferences.getInstance();
    name = prefs.getString("username")!;
    mobile = prefs.getString("mobileno")!;
    ages = prefs.getString("age")!;

    setState(() {});
  }
}
