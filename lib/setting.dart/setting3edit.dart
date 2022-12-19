//import 'dart:html';
// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting.dart/setting2profile.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class editsetting extends StatefulWidget {
  const editsetting({Key? key}) : super(key: key);
  @override
  State<editsetting> createState() => _editsettingState();
}

// ignore: camel_case_types
class _editsettingState extends State<editsetting> {
  TextEditingController usernames = TextEditingController();
  TextEditingController emailids = TextEditingController();
  late SharedPreferences sp;

  File? selectedimage;
  String base64image = '';
  var profileimage;

  Future<void> chooseimage(type) async {
    var image;
    if (type == 'camera') {
      image = await ImagePicker().pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker().pickImage(source: ImageSource.gallery);
    }

    profileimage = image;
    if (image != null) {
      setState(() {
        selectedimage = File(image.path);
        base64image = base64Encode(selectedimage!.readAsBytesSync());
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setdata();
  }

  void setdata() async {
    sp = await SharedPreferences.getInstance();
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
                    'Edit Profile',
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
                      Color.fromARGB(255, 73, 151, 196),
                      Colors.white
                    ])),
              ),
            ),
            body: ListView(children: [
              Column(children: [
                const Center(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                Stack(children: [
                  ClipOval(
                    child: selectedimage != null
                        ? Image.file(
                            selectedimage!,
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
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Image Import From"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      chooseimage('camera');
                                      Navigator.pop(context);
                                    },
                                    child: const Text("camera")),
                                TextButton(
                                    onPressed: () {
                                      chooseimage('gallery');

                                      Navigator.pop(context);
                                    },
                                    child: const Text("gallery")),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  )
                ]),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 440,
                  child: TextFormField(
                    controller: usernames,
                    decoration: InputDecoration(
                        hintText: "Full Name",
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 167, 164, 164),
                                width: 1.0))),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 440,
                  child: TextField(
                    controller: emailids,
                    decoration: InputDecoration(
                        hintText: "Email id",
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 167, 164, 164),
                                width: 1.0))),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                  onPressed: () {
                    String username = usernames.text;
                    String emailid = emailids.text;
                    String? profileimages = profileimage.path.toString();

                    if (username != '' &&
                        emailid != '' 
                        ) {
                      sp.setString('username', username);
                      sp.setString('emailid', emailid);
                      sp.setString('image', profileimages);

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => profilesetting()));
                      Get.off(profilesetting());
                    }
                  },
                  child: const Text(
                    'Save Changes',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      minimumSize: const Size(350, 55)),
                )
              ]),
            ])));
  }
}
