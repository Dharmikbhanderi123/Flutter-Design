// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// // import 'package:flutter_application_1/material_components.dart';

// class myappDemo extends StatelessWidget {
//   // const myapp6({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             centerTitle: true,
//             bottom: TabBar(
//               tabs: [
//                 Tab(
//                   text: "Tab 1",
//                   icon: Icon(Icons.home),
//                 ),
//                 Tab(
//                   text: "Tab 2",
//                   icon: Icon(Icons.star),
//                 ),
//                 Tab(
//                   text: "Tab 3",
//                   icon: Icon(Icons.person),
//                 ),
//               ],
//             ),
//             backgroundColor: Colors.transparent,
//             title: Text(
//               "APPBAR",
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               Center(child: Text('Tab 1')),
//               Center(child: Text('Tab 2')),
//               Center(child: Text('Tab 3')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// class MyAppapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'FlutterCorner.com',
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool obscureText = true;
//   void abcd() {
//     setState(() {
//       obscureText = !obscureText;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FlutterCorner.com'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(25),
//         child: Center(
//           child: TextField(
//             obscureText: obscureText,
//             decoration: InputDecoration(
//               labelText: 'Password',
//               suffixIcon: IconButton(
//                   icon: Icon(
//                     obscureText ? Icons.visibility : Icons.visibility_off,
//                   ),
//                   onPressed: abcd),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

// void main() {
//   runApp(MyApp());
// }

class savan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyAppaState(),
    );
  }
}

class _MyAppaState extends StatefulWidget {
  final formKey = GlobalKey<FormState>();
  @override
  State<_MyAppaState> createState() => __MyAppaStateState();
}

class __MyAppaStateState extends State<_MyAppaState> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void validate() {}
  bool obscureText = true;
  void _toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
            child: Form(
                key: formKey,
                child: Column(children: [
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'required'),
                        EmailValidator(errorText: 'not valid'),
                      ])),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: TextFormField(
                        obscureText: obscureText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: _toggle,
                          ),
                          //icon: Icon(Icons.lock),
                          labelText: 'password',
                          border: OutlineInputBorder(),
                        ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'required'),
                          MinLengthValidator(6,
                              errorText: 'more than 6 chars required')
                        ])),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('logged in'),
                            duration: Duration(seconds: 2),
                          ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Please Check the detail'),
                            duration: Duration(seconds: 2),
                          ));
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ]))),
      ),
    );
  }
}
