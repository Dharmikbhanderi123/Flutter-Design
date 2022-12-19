import 'dart:core';
//import 'package:demo/SharedPreferences.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class sp extends StatelessWidget {
  const sp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "practise app",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const homepage(),
    );
  }
}

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  TextEditingController controller = TextEditingController();

  Future<void> savenumber(String number) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('number', number);
  }

  void readtext() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? number = pref.getString('number');
    print(number);
    if (number != null) {
      controller = number as TextEditingController;
    }
  }

  @override
  void initState() {
    readtext();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "ENTER YOUR NAME",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              controller: controller,
              onChanged: (Value) {
                savenumber.toString();
              },
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// // ignore: camel_case_types
// class sp extends StatelessWidget {
//   const sp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Learning',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() {
//     return _MyHomePageState();
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late SharedPreferences prefs;
//   TextEditingController controller = TextEditingController();
//   String name = "";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flutter SharedPreferences"),
//       ),
//       body: Container(
//           margin: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextField(
//                 controller: controller,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Text(
//                 name,
//                 style: const TextStyle(fontSize: 20),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                 child: const Text("Save"),
//                 onPressed: () {
//                   save();
//                 },
//               ),
//               ElevatedButton(
//                 child: const Text("retrieve"),
//                 onPressed: () {
//                   retrieve();
//                 },
//               ),
//               ElevatedButton(
//                 child: const Text("Delete"),
//                 onPressed: () {
//                   delete();
//                 },
//               ),
//             ],
//           )),
//     );
//   }

//   save() async {
//     prefs = await SharedPreferences.getInstance();
//     prefs.setString("username", controller.text.toString());
//   }

  // retrieve() async {
  //   prefs = await SharedPreferences.getInstance();
  //   name = prefs.getString("username")!;
  //   setState(() {});
  // }

//   delete() async {
//     prefs = await SharedPreferences.getInstance();
//     prefs.remove("username");
//     name = "";
//     setState(() {});
//   }
// }
