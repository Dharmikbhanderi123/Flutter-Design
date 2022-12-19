// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting.dart/setting3edit.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class profilesetting extends StatefulWidget {
  const profilesetting({Key? key}) : super(key: key);

  @override
  State<profilesetting> createState() => _profilesettingState();
}

class _profilesettingState extends State<profilesetting> {
  late SharedPreferences sp;

  String? username;
  String? emailids;
  String? profileImage;

  @override
  void initState() {
    super.initState();
    getdata();
  }

  void getdata() async {
    sp = await SharedPreferences.getInstance();
    setState(() {
      username = sp.getString('username')!;
      emailids = sp.getString('emailid')!;
      profileImage = sp.getString('image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'My Profile',
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 60, 105), fontSize: 25),
                  ),
                ),
              ),
              toolbarHeight: 100,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                      Color.fromARGB(255, 112, 191, 211),
                      Colors.white,
                    ])),
              ),
            ),
            body: ListView(children: [
              Column(children: [
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sellers ID: ',
                      style: TextStyle(
                          height: 4,
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.blue[900]),
                    ),
                    Text(
                      '246 980',
                      style: TextStyle(
                          height: 4,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.blue[900]),
                    ),
                  ],
                )),
                const SizedBox(
                  height: 30,
                ),
                ClipOval(
                  child: profileImage != null
                      ? Image.file(
                          File(profileImage!),
                          fit: BoxFit.cover,
                          height: 150,
                          width: 150,
                        )
                      : Image.asset(
                          'images/image.jpg',
                          fit: BoxFit.cover,
                          height: 150,
                          width: 150,
                        ),
                ),
                Text(
                  '$username',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      height: 4,
                      color: Color.fromARGB(255, 13, 161, 13)),
                ),
                Text(
                  '$emailids',
                  style: TextStyle(
                      fontSize: 15, height: 1, color: Colors.blue[900]),
                ),
                const SizedBox(
                  height: 120,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => editsetting()));
                    Get.off(editsetting());
                  },
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900],
                      minimumSize: const Size(350, 55)),
                ),
              ]),
            ])));
  }
}
