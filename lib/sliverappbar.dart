import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter_application_1/material_components.dart';

class myapp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practise",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "APPBAR",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('WELCOME'),
                background: Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.orange,
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.purple,
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                ),
              ),
            ]))
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
