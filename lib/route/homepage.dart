import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/thirdpage.dart';
import 'package:get/get.dart';

class HomePage5 extends StatelessWidget {
  const HomePage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("HomePage")),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.orange,
                  onPressed: () => Get.toNamed('/second',
                      arguments: {'someArgument': 'someInfo'}),
                  child: const Text('Fill Your Detail'),
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () => Get.to(const ThirdPage()),
                  child: const Text('Conformation'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
