import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profiles extends StatefulWidget {
  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ALERTDIALOGBOX")),
      body: Center(
        child: ElevatedButton(
          child: Text("show Dialog"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Container(
                  child: AlertDialog(
                    title: Text("are you sure ?"),
                    content: TextField(
                      onChanged: (value) {},
                      decoration:
                          InputDecoration(hintText: "enter folder name"),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("NO")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("YES")),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
