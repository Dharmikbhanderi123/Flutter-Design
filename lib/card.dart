import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class myapp15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "practise",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: const Text(
              "FLUTTER DEMO",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),

          // CIRCULARPROGRESSINDICATOR//
          body: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 7,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
            // body: Container(
            //   height: 300,
            //   width: 300,
            //   child: const Card(
            //     color: Colors.orange,
            //     //shape: RoundedRectangleBorder(
            //     // borderRadius: BorderRadius.circular(15.0),
            //     elevation: 50.0,
            //     margin: EdgeInsets.all(20.0),
            //     shadowColor: Colors.red,
            //   ),
            // ),
          ),
        ));
  }
}
