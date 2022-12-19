import 'dart:ui';
import 'package:flutter/material.dart';

class myapp12 extends StatelessWidget {
  const myapp12({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practise',
      home: Scaffold(
        appBar: AppBar(
          title: Text("SWITCH"),
        ),
        body: Center(
          child: switches(),
        ),
      ),
    );
  }
}

class switches extends StatefulWidget {
  const switches({Key? key}) : super(key: key);
  @override
  State<switches> createState() => _switchesState();
}

class _switchesState extends State<switches> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text('Lights'),
      value: _lights,
      onChanged: (bool value) {
        setState(() {
          _lights = value;
        });
      },
      secondary: Icon(Icons.lightbulb_outline),
    );
  }
}
