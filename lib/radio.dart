import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter_application_1/material_components.dart';

class myapp9 extends StatelessWidget {
  // const practical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'checkbox',
      home: practise(),
    );
  }
}

class practise extends StatefulWidget {
  @override
  State<practise> createState() => _practiseState();
}

class _practiseState extends State<practise> {
  int? _value = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 219, 13, 82),
      ),
      body: Row(
        children: [
          Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value as int;
                });
              }),
          Text("Radio 1"),
          Radio(
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value as int?;
                });
              }),
          Text("Radio 2"),
          Radio(
              value: 3,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value as int?;
                });
              }),
          Text("Radio 3"),
        ],
      ),
    );
  }
}
