import 'package:flutter_application_1/2getsnackbar.dart';
import 'package:get/get.dart';

import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'mycontroller.dart';

class statem extends StatelessWidget {
  MyController mycontroller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('state management')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<MyController>(
              builder: (controller) {
                return Text(
                  'the value is ${mycontroller.count}',
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextButton(
                child: Text("Increment"),
                onPressed: () {
                  //Get.find<MyController>().increment();
                  mycontroller.increment();
                })
          ],
        ),
      ),
    );
  }
}
