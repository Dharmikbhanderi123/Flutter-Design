import 'package:get/get.dart';
import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class screen2 extends StatefulWidget {
  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Center(
          child: Text(
            'Screen 2',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*Get.snackbar("snackbar", "Welcome To a Screen2",
              snackPosition: SnackPosition.BOTTOM,
              margin: EdgeInsets.all(50),
              backgroundColor: Colors.lightGreenAccent,
              icon: Icon(Icons.thumb_up),
              shouldIconPulse: false);*/

          Get.defaultDialog(
            title: "Dialog Box",
            content: Text('Do You Want To Continue'),
            textConfirm: 'okay',
            textCancel: 'cancel',
          );
        },
        child: Icon(Icons.add),
        foregroundColor: Colors.red,
        backgroundColor: Colors.greenAccent,
        mini: false,
        elevation: 20,
        highlightElevation: 50,

        // shape: RoundedRectangleBorder(
        //   side: BorderSide(width: 3, color: Colors.black)
        //borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
    );
  }
}
