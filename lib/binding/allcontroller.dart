import 'package:flutter_application_1/mycontroller.dart';
import 'package:get/get.dart';

import 'homecontroller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    //  Get.lazyPut<HomeController>(() => HomeController());

    Get.put<HomeController>(HomeController());
  }
}
