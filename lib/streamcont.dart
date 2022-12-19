import 'dart:async';
import 'dart:developer';
import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class demo4 extends StatelessWidget {
  demo4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      debugShowCheckedModeBanner: false,
      home: count(),
    );
  }
}

class count extends StatefulWidget {
  const count({Key? key}) : super(key: key);
  @override
  State<count> createState() => _countState();
}

class _countState extends State<count> {
  int _count = 30;
  StreamController<int> counterController = StreamController<int>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: Center(
            child: StreamBuilder(
                stream: counterController.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data.toString(),
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  } else {
                    return Text(
                      '30',
                      style:
                          TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                    );
                  }
                })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _count--;
          counterController.sink.add(_count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
