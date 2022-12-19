import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class myapp11 extends StatelessWidget {
  const myapp11({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practise',
      home: sliders(),
    );
  }
}

class sliders extends StatefulWidget {
  const sliders({Key? key}) : super(key: key);
  @override
  State<sliders> createState() => _slidersState();
}

class _slidersState extends State<sliders> {
  double _currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SLIDER"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_currentvalue.toString(), style: TextStyle(fontSize: 20)),
          Slider(
            value: _currentvalue,
            min: 0,
            max: 100,
            divisions: 10,
            label: _currentvalue.toString(),
            activeColor: Colors.deepOrangeAccent,
            inactiveColor: Colors.grey,
            thumbColor: Colors.amber,
            onChanged: (value) {
              setState(() {
                _currentvalue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
