import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp96 extends StatelessWidget {
  const MyApp96({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepages(),
    );
  }
}

class homepages extends StatefulWidget {
  const homepages({Key? key}) : super(key: key);

  @override
  State<homepages> createState() => _homepagesState();
}

class _homepagesState extends State<homepages> with TickerProviderStateMixin {
  late Animation<double> faceanimation;
  late AnimationController faceanimationcontroller;

  @override
  void initState() {
    super.initState();

    faceanimationcontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    faceanimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(faceanimationcontroller.view);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: faceanimation,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
            ),
          ),
          FadeTransition(
            opacity: faceanimation,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.green,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                faceanimationcontroller.forward();
              },
              child: const Text('show')),
          ElevatedButton(
              onPressed: () {
                faceanimationcontroller.reverse();
              },
              child: const Text('hide')),
        ],
      ),
    )));
  }
}
