import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// class Profiles2 extends StatefulWidget {
//   @override
//   State<Profiles2> createState() => _Profiles2State();
// }

// class _Profiles2State extends State<Profiles2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("SNACKBAR")),
//       body: Center(
//         child: TextButton(
//           onPressed: () {
//             final snackbar = SnackBar(
//               backgroundColor: Colors.green,
//               content: Text("This is Snackbar"),
//               shape: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               action: SnackBarAction(
//                 textColor: Colors.black,
//                 label: "undo",
//                 onPressed: () {},
//               ),
//               duration: Duration(seconds: 2),
//               behavior: SnackBarBehavior.floating,
//             );
//             ScaffoldMessenger.of(context).showSnackBar(snackbar);
//           },
//           child: Text("Show Snackbar"),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Profiles2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tooltip Example"),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(10),
                child: Tooltip(
                  waitDuration: Duration(seconds: 1),
                  showDuration: Duration(seconds: 2),
                  padding: EdgeInsets.all(5),
                  height: 35,
                  textStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  message: 'My Account',
                  child: Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                )),
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                message: 'My Account',
                child: Icon(
                  Icons.account_box,
                  size: 100,
                ),
              ),
            )
          ]),
    );
  }
}
