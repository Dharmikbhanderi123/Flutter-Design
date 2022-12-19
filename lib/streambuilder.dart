import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class demo3 extends StatelessWidget {
  demo3({Key? key}) : super(key: key);

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
  int _count = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream builder"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(child: _buildStreamBuilder()),
    );
  }

  _buildStreamBuilder() {
    return StreamBuilder(
      stream: _inCreaseCount(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          return Center(
            child: Text(
              '${snapshot.data}',
              style: TextStyle(
                  fontSize: 100,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }

  Stream<int> _inCreaseCount() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 60));
      yield _count--;
    }
  }
}
                