// ignore_for_file: deprecated_member_use, avoid_print
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dashboard.dart';

//import 'mainPage.dart';
//void main() => runApp(MyApp());
class MyApp44 extends StatelessWidget {
  const MyApp44({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Codeplayon Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  // ignore: non_constant_identifier_names
  TextEditingController usernames = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController passwords = TextEditingController();
  late SharedPreferences logindata;
  //late bool newuser;
  @override
  void initState() {
    super.initState();
    loginpage();
  }

  // ignore: non_constant_identifier_names
  void loginpage() async {
    logindata = await SharedPreferences.getInstance();

    // newuser = (logindata.getBool('login') ?? true);
    // print(newuser);
    // if (newuser == false) {
    //   Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: (context) => const MyDashboard()));
    // }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usernames.dispose();
    passwords.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Login Form",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: usernames,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: passwords,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              // textColor: Colors.white,
              // color: Colors.blue,
              onPressed: () {
                String username = usernames.text;
                String password = passwords.text;
                if (username != '' && password != '') {
                  print('Successfull');
                  //   logindata.setBool('login', false);
                  logindata.setString('username', username);
                  logindata.setString('passsword', password);

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const MyDashboard()));
                  Get.to(MainPage());
                }
              },
              child: const Text("Log-In"),
            )
          ],
        ),
      ),
    );
  }
}
