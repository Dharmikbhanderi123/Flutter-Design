import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// void main() {
//   runApp(myapp());
// }

class myapp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var quarydata = MediaQuery.of(context);
    return MaterialApp(
      title: "practise",
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quarydata = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          "MEDIAQUARY",
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),

      /*   body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            //height: 100,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            //height: 100,
            color: Colors.green,
          ),
        ],
      ),*/

      body: Center(
          child: Column(
        children: [
          Text('Height:' + MediaQuery.of(context).size.height.toString()),
          Text('Width:' + MediaQuery.of(context).size.width.toString()),
          Text('Aspect Ratio:' +
              MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
          Text(MediaQuery.of(context).orientation.toString()),
        ],
      )),
    );
  }
}
