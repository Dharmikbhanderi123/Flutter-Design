import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(myapp1());
}

// class myapp1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "practise",
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           title: Text(
//             "FLUTTER DEMO",
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//         ),
//         body: ListView(
//           shrinkWrap: true,
//           children: [
//             Text(
//               "Row Widgets Show",
//               style: TextStyle(
//                 fontSize: 20,
//               ),
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.all(40.0),
//                     margin: EdgeInsets.all(30.0),
//                     child: Text("some local image"),
//                     height: 200,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         border: Border.all(
//                           color: Colors.black,
//                           width: 3,
//                           style: BorderStyle.solid,
//                         )),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.all(40.0),
//                     margin: EdgeInsets.all(30.0),
//                     child: Text("some local image"),
//                     height: 200,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         border: Border.all(
//                           color: Colors.black,
//                           width: 3,
//                           style: BorderStyle.solid,
//                         )),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.all(40.0),
//                     margin: EdgeInsets.all(30.0),
//                     child: Text("some local image"),
//                     height: 200,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         border: Border.all(
//                           color: Colors.black,
//                           width: 3,
//                           style: BorderStyle.solid,
//                         )),
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "column Widgets Show",
//                   style: TextStyle(
//                     fontSize: 20,
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(30.0),
//                   margin: EdgeInsets.all(20.0),
//                   child: Text('Some Text'),
//                   height: 200,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                       color: Colors.blue,
//                       border: Border.all(
//                         color: Colors.black,
//                         style: BorderStyle.solid,
//                       )),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(30.0),
//                   margin: EdgeInsets.all(20.0),
//                   child: Text('Some Text'),
//                   height: 200,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                       color: Colors.blue,
//                       border: Border.all(
//                         color: Colors.black,
//                         style: BorderStyle.solid,
//                       )),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(30.0),
//                   margin: EdgeInsets.all(20.0),
//                   child: Text('Some Text'),
//                   height: 200,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                       color: Colors.blue,
//                       border: Border.all(
//                         color: Colors.black,
//                         style: BorderStyle.solid,
//                       )),
//                 ),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Listview with 20 Widgets",
//                   style: TextStyle(
//                     fontSize: 20,
//                   ),
//                 ),
//               ],
//             ),
//             /* ListView.separated(
//                 shrinkWrap: true,
//                 itemCount: 30,
//                 separatorBuilder: (context, index) {
//                   return SizedBox(
//                     height: 15,
//                   );
//                 },
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: Icon(Icons.circle),
//                     title: Text('User Name "index"'),
//                     iconColor: Color.fromARGB(255, 104, 49, 67),
//                   );
//                 }),*/

//             ListView.builder(
//               shrinkWrap: true,
//               padding: EdgeInsets.all(50),
//               scrollDirection: Axis.vertical,
//               itemCount: 30,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   leading: Icon(Icons.circle),
//                   title: Text('User Name "index"'),
//                   iconColor: Color.fromARGB(255, 104, 49, 67),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
class myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practise",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "FLUTTER DEMO",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(40.0),
              margin: EdgeInsets.all(30.0),
              child: Text("some local image"),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                    style: BorderStyle.solid,
                  )),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(40.0),
                margin: EdgeInsets.all(30.0),
                child: Text("some local image"),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    )),
              ),
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(40.0),
                  margin: EdgeInsets.all(30.0),
                  child: Text("some local image"),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                        style: BorderStyle.solid,
                      )),
                ),
              ],
            ),
          ],
        ),

        /* ListView.separated(
                shrinkWrap: true,
                itemCount: 30,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.circle),
                    title: Text('User Name "index"'),
                    iconColor: Color.fromARGB(255, 104, 49, 67),
                  );
                }),*/
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
