// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '2.dart';

class MyApp50 extends StatelessWidget {
  const MyApp50({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get Route Managment',
      initialRoute: '/home',
      getPages: appRoutes(),
    );
  }
}
