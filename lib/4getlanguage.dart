//import 'package:flutter_application_1/2getsnackbar.dart';
//import 'package:flutter_application_1/3getstatem.dart';
import 'package:flutter_application_1/messages.dart';
//import 'package:flutter_translate/flutter_translate.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/binding.dart';

//import 'dart:html';
//import 'dart:ui';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

import 'mycontroller.dart';

class statem1 extends StatelessWidget {
  MyController1 myController1 = Get.put(MyController1());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: Messages(),
        locale: Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        title: 'language',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Language'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'hello'.tr,
                  style: TextStyle(fontSize: 35, color: Colors.redAccent),
                ),
                TextButton(
                    child: Text(
                      'Hindi',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      myController1.changeLanguage('hi', 'IN');
                    }),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                    child: Text(
                      'Gujarati',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      myController1.changeLanguage('gu', 'IN');
                    }),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                    child: Text(
                      'English',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      myController1.changeLanguage('en', 'Us');
                    }),
              ],
            ),
          ),
        ));
  }
}

class MyController1 extends GetxController {
  void changeLanguage(var param1, var param2) {
    var locale = Locale(param1, param2);
    Get.updateLocale(locale);
  }
}
