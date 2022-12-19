// ignore_for_file: file_names

import 'package:flutter_application_1/route/secondpage.dart';
import 'package:flutter_application_1/route/thirdpage.dart';
import 'package:get/get.dart';
import 'homepage.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => const HomePage5(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/second',
        page: () => SecondPage(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/third',
        page: () => const ThirdPage(),
        transition: Transition.topLevel,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];
