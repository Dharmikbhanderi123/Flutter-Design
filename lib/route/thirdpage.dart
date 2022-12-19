import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("HomePage")),
        body: Center(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Confirm Then Click Submit button,Otherwise Click Go Back buton',
              style: TextStyle(fontSize: 15),
            ),
            FloatingActionButton(
              onPressed: () {
                Get.snackbar(
                    "Register", "congratulations Registration Successfully!!! ",
                    snackPosition: SnackPosition.BOTTOM,
                    margin: const EdgeInsets.all(50),
                    backgroundColor: const Color.fromARGB(255, 18, 158, 177),
                    icon: const Icon(Icons.thumb_up),
                    shouldIconPulse: false);
              },
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () => Get.offNamed('/home'),
              child: Text('Go Back'),
            ),
          ],
        ))));
  }
}
