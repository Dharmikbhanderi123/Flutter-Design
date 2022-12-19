// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';
//import 'main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codeplayon Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyDashboard(),
    );
  }
}

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  late SharedPreferences logindata;
  // late SharedPreferences passworddata;

  String? username;
  String? passsword;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
      passsword = logindata.getString('passsword')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Shared Preference Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Welcome To $username',
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Your Password is $passsword',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                //    logindata.setBool('login', true);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const MyLoginPage()));
                Get.to(MyLoginPage());
              },
              child: const Text('LogOut'),
            )
          ],
        ),
      ),
    );
  }
}
