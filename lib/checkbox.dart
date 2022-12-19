import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class checkboxx extends StatelessWidget {
  const checkboxx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'checkbox',
      home: checkboxes(),
    );
  }
}

class checkboxes extends StatefulWidget {
  const checkboxes({Key? key}) : super(key: key);
  @override
  State<checkboxes> createState() => _checkboxesState();
}

class _checkboxesState extends State<checkboxes> {
  bool Mon = false;
  bool Tues = false;
  bool Wed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text(
          "CHECKBOX",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CheckboxListTile(
          value: Mon,
          onChanged: (value) {
            setState(() {
              Mon = value!;
            });
          },
          activeColor: Colors.blue,
          title: Text("Monday"),
          subtitle: Text("Day 1"),
        ),
        CheckboxListTile(
          value: Tues,
          onChanged: (value) {
            setState(() {
              Tues = value!;
            });
          },
          activeColor: Colors.blue,
          title: Text("Tuesday"),
          subtitle: Text("Day 2"),
        ),
        CheckboxListTile(
          value: Wed,
          onChanged: (value) {
            setState(() {
              Wed = value!;
            });
          },
          activeColor: Colors.blue,
          title: Text("Wednesday"),
          subtitle: Text("Day 3"),
        ),
      ]),
    );
  }
}
