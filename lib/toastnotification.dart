import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastExample extends StatefulWidget {
  @override
  State<ToastExample> createState() => ToastExampleState();
}

class ToastExampleState extends State<ToastExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Notification ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Toast Notification '),
          ),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: ElevatedButton(
                child: Text('Start'),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'welcome',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      // timeInSecForIos: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.black);
                },
              ),
            ),
          )),
    );
  }
}
