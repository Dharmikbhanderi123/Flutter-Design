//import 'dart:ffi';
import 'dart:html';
import 'package:flutter_application_1/binding/homecontroller.dart';
import 'package:flutter_application_1/mycontroller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'allcontroller.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text(
                'The Value is ${Get.find<HomeController>().count}',
                style: TextStyle(fontSize: 25),
              )),
          ElevatedButton(
            onPressed: () {
              Get.find<HomeController>().increment();
            },
            child: Text("increment"),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Back'))
        ],
      )),
    );
  }
}
