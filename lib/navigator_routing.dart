import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/mediaquary.dart';

class demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practise",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: homepage1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homepage1 extends StatefulWidget {
  const homepage1({Key? key}) : super(key: key);
  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  late String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEMO"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      minLines: 1,
                      onChanged: (text) {
                        value = text;
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        hintText: 'Enter Your Name',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Newpage(value: value),
                  ),
                );
              },
              child: Text(
                "Open",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Newpage extends StatefulWidget {
  String value;
  Newpage({required this.value});
  @override
  State<Newpage> createState() => _NewpageState(value);
}

class _NewpageState extends State<Newpage> {
  String value;
  _NewpageState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Newpage2(),
                ));
              },
              child: Text(
                value,
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Close",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Newpage2 extends StatefulWidget {
  const Newpage2({Key? key}) : super(key: key);
  @override
  State<Newpage2> createState() => _Newpage2State();
}

class _Newpage2State extends State<Newpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "new page",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Exit",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
