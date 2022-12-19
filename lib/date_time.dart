import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class practical extends StatelessWidget {
  // const practical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'checkbox',
      home: practicals(),
    );
  }
}

class practicals extends StatefulWidget {
  //const practical({Key? key}) : super(key: key);
  @override
  State<practicals> createState() => _practicalsState();
}

class _practicalsState extends State<practicals> {
  DateTime? date;
  final dateFormate = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date and Time"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Text((date == null) ? 'picked date!!' : dateFormate.format(date!)),
          TextButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2023),
              ).then((value) {
                setState(() {
                  date = value!;
                });
              });
            },
            child: Text("choose date"),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('dateFormate', dateFormate));
  }
}
