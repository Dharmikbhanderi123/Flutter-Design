import 'package:flutter_application_1/2getsnackbar.dart';
import 'package:get/get.dart';

import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class routing extends StatefulWidget {
  @override
  State<routing> createState() => _routingState();
}

class _routingState extends State<routing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(() => screen2());
        },
        child: Center(
          child: Text(
            'Scree 1',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
