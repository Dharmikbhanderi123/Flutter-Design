import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
