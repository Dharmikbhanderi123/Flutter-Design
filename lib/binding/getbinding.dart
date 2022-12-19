//import 'dart:ffi';
import 'dart:html';
import 'package:flutter_application_1/mycontroller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'allcontroller.dart';
import 'home.dart';

class binding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      title: "Binding",
      home: Scaffold(
        appBar: AppBar(title: Text("Binding")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'The Value is ${Get.find<MyController>().count}',
                  style: TextStyle(fontSize: 25),
                )),
            ElevatedButton(
              onPressed: () {
                Get.find<MyController>().increment();
              },
              child: Text("increment"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(home());
                },
                child: Text('home'))
          ],
        )),
      ),
    );
  }
}
