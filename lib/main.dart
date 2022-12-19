// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/1.dart';
import 'package:flutter_application_1/setting.dart/setting1home.dart';
import 'package:flutter_application_1/shared%20login.dart/dashboard.dart';
import 'package:flutter_application_1/shared%20login.dart/login.dart';

import 'datatable.dart';
// import 'package:flutter_application_1/3getstatem.dart';
// import 'package:flutter_application_1/4getlanguage.dart';
// import 'package:flutter_application_1/abcd.dart';
// import 'package:flutter_application_1/alertdialog.dart';
// import 'package:flutter_application_1/animation.dart';
// import 'package:flutter_application_1/apicall.dart';
// import 'package:flutter_application_1/binding/getbinding.dart';
// import 'package:flutter_application_1/bottomsheet.dart';
// import 'package:flutter_application_1/buttons.dart';
// import 'package:flutter_application_1/calender2.dart';
// import 'package:flutter_application_1/card.dart';
// import 'package:flutter_application_1/calender.dart';
// import 'package:flutter_application_1/checkbox.dart';
// import 'package:flutter_application_1/circular_lineur.dart';
// import 'package:flutter_application_1/datatable.dart';
// import 'package:flutter_application_1/date_time.dart';
// import 'package:flutter_application_1/drawer_bnb.dart';
// import 'package:flutter_application_1/flutter _demo.dart';
// import 'package:flutter_application_1/flutter_demo2.dart';
// import 'package:flutter_application_1/1getrouting.dart';
// import 'package:flutter_application_1/gridview.dart';
// import 'package:flutter_application_1/jsonparsing.dart';
// import 'package:flutter_application_1/navigator_argument.dart';
// import 'package:flutter_application_1/navigator_routing.dart';
// import 'package:flutter_application_1/radio.dart';
// import 'package:flutter_application_1/route/1.dart';
// import 'package:flutter_application_1/setting.dart/setting1home.dart';
// import 'package:flutter_application_1/shared%20login.dart/login.dart';
// import 'package:flutter_application_1/shared%20reference/shared_refer.dart';
// import 'package:flutter_application_1/slider.dart';
// //import 'package:flutter_application_1/slider.dart';
// import 'package:flutter_application_1/sliverappbar.dart';
// import 'package:flutter_application_1/mediaquary.dart';
// import 'package:flutter_application_1/snackbar.dart';
// import 'package:flutter_application_1/streambuilder.dart';
// import 'package:flutter_application_1/streamcont.dart';
// import 'package:flutter_application_1/switch.dart';
// import 'package:flutter_application_1/tab.dart';
// import 'package:flutter_application_1/textfield.dart';
// import 'package:flutter_application_1/toastnotification.dart';
// import 'package:get/get.dart';

/*void main() {
  runApp(MaterialApp(title: "best app ", home: HomePage()));
}

class HomePage extends StatelessWidget {
  final int days = 28;
  final String name = "Excellent";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning app"),
      ),
      body: Center(
          child: Container(
        child: Text("Welcome To $days Days Of Flutter By $name"),
      )),
      drawer: Drawer(),
    );
  }
}*/

// TEXT WIDGET

/*void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practise app",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "practise app",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Text(
            "I am learn flutter in excellent web world",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 05,
              backgroundColor: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Colors.teal,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
        ),
      ),
    );
  }
}*/

// ROW WIDGETS
// void main() {
//   runApp(
//     MaterialApp(
//       home: table(),
//     ),
//   );
// }

/*void main() {
  runApp(
    statem(),
  );
}*/

void main() {
  runApp(
    MyApp50(),
  );
}




// class myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "practise app",
//         theme: ThemeData(
//           primarySwatch: Colors.blueGrey,
//           backgroundColor: Colors.white,
//         ),
//         home: Scaffold(
//             appBar: AppBar(
//               title: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 30),
//                   child: Text(
//                     'Flutter',
//                   ),
//                 ),
//               ),
//               // centerTitle: true,
//               toolbarHeight: 100,
//               flexibleSpace: Container(
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomLeft,
//                         colors: [Colors.purple, Colors.white])),
//               ),
//             ),
//             body: Padding(
//               padding: const EdgeInsets.all(25),
//               child: Column(
//                 children: [
//                   Container(
//                     color: Color.fromARGB(255, 232, 233, 235),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             'My Profile',
//                             style: TextStyle(
//                                 fontSize: 18, color: Colors.blue[900]),
//                           ),
//                           IconButton(
//                               color: Colors.blue[900],
//                               onPressed: () {},
//                               icon: Icon(Icons.chevron_right))
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     color: Color.fromARGB(255, 232, 233, 235),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             'Receipt Settings',
//                             style: TextStyle(
//                                 fontSize: 18, color: Colors.blue[900]),
//                           ),
//                           IconButton(
//                               color: Colors.blue[900],
//                               onPressed: () {},
//                               icon: Icon(Icons.chevron_right))
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     color: Color.fromARGB(255, 232, 233, 235),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             'Lottery Number',
//                             style: TextStyle(
//                                 fontSize: 18, color: Colors.blue[900]),
//                           ),
//                           IconButton(
//                               color: Colors.blue[900],
//                               onPressed: () {},
//                               icon: Icon(Icons.chevron_right))
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     color: Color.fromARGB(255, 232, 233, 235),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             'Award Number',
//                             style: TextStyle(
//                                 fontSize: 18, color: Colors.blue[900]),
//                           ),
//                           IconButton(
//                               color: Colors.blue[900],
//                               onPressed: () {},
//                               icon: Icon(Icons.chevron_right))
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     color: Color.fromARGB(255, 232, 233, 235),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             'Amount Statistical',
//                             style: TextStyle(
//                                 fontSize: 18, color: Colors.blue[900]),
//                           ),
//                           IconButton(
//                               color: Colors.blue[900],
//                               onPressed: () {},
//                               icon: Icon(Icons.chevron_right))
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     color: Color.fromARGB(255, 232, 233, 235),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             'Language Setting',
//                             style: TextStyle(
//                                 fontSize: 18, color: Colors.blue[900]),
//                           ),
//                           IconButton(
//                               color: Colors.blue[900],
//                               onPressed: () {},
//                               icon: Icon(Icons.chevron_right))
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     color: Color.fromARGB(255, 245, 207, 207),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             'Log Out',
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 color: Color.fromARGB(255, 233, 75, 75)),
//                           ),
//                           IconButton(
//                               color: Color.fromARGB(255, 233, 75, 75),
//                               onPressed: () {},
//                               icon: Icon(Icons.exit_to_app))
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )));
//   }
// }
