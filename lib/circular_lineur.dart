import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';

class myapp16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practise",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "Sale Chart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),

        // CIRCULARPROGRESSINDICATOR//
        // body: const Center(
        //   child: CircularProgressIndicator(
        //     strokeWidth: 7,
        //     valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
        //   ),
        // ),

        body: Column(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.all(40),
              child: CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 15.0,
                percent: 80 / 100,
                animation: true,
                animationDuration: 1500,
                center: new Text(
                  "80%",
                  style: TextStyle(fontSize: 20),
                ),
                footer: new Text(
                  "Order This Month",
                  style: TextStyle(fontSize: 20),
                ),
                progressColor: Colors.orange,
                circularStrokeCap: CircularStrokeCap.square,
              ),
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: LinearPercentIndicator(
                width: 220.0,
                //lineWidth: 15.0,
                percent: 60 / 100,
                animation: true,
                animationDuration: 1500,
                leading: new Text(
                  "60%",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: new Text(
                  "Order This Year",
                  style: TextStyle(fontSize: 20),
                ),
                progressColor: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
