import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/mediaquary.dart';

class demo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practise",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => homepage1(),
        '/New': (context) => Newpage(),
        '/New2': (context) => Newpage2(),
      },
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
                Navigator.pushNamed(context, '/New',
                    arguments: ScreenArguments(value));
              },
              child: Text(
                "Open",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenArguments {
  final String messages;
  ScreenArguments(this.messages);
}

class Newpage extends StatefulWidget {
  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final name = args;
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
            Text(args.messages),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/New2',
                    arguments: ScreenArguments('hello'));
              },
              child: Text(
                "Start",
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
        title: Text("New Page 2"),
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
