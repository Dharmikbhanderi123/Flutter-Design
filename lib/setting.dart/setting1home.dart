import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting.dart/setting2profile.dart';
import 'package:get/get.dart';

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "practise app",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.white,
      ),
      home: const settings1(),
    );
  }
}

// ignore: camel_case_types
class settings1 extends StatefulWidget {
  const settings1({Key? key}) : super(key: key);

  @override
  State<settings1> createState() => _settings1State();
}

// ignore: camel_case_types
class _settings1State extends State<settings1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Setting',
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
                  Color.fromARGB(255, 124, 176, 201),
                  Colors.white
                ])),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 232, 233, 235),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'My Profile',
                        style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                      ),
                      IconButton(
                          color: Colors.blue[900],
                          onPressed: () {
                            Get.to(profilesetting());
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => profilesetting()));
                          },
                          icon: const Icon(Icons.chevron_right))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color.fromARGB(255, 232, 233, 235),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Receipt Settings',
                        style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                      ),
                      IconButton(
                          color: Colors.blue[900],
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_right))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color.fromARGB(255, 232, 233, 235),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Lottery Number',
                        style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                      ),
                      IconButton(
                          color: Colors.blue[900],
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_right))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color.fromARGB(255, 232, 233, 235),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Award Number',
                        style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                      ),
                      IconButton(
                          color: Colors.blue[900],
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_right))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color.fromARGB(255, 232, 233, 235),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Amount Statistical',
                        style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                      ),
                      IconButton(
                          color: Colors.blue[900],
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_right))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color.fromARGB(255, 232, 233, 235),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Language Setting',
                        style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                      ),
                      IconButton(
                          color: Colors.blue[900],
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_right))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color.fromARGB(255, 245, 207, 207),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Log Out',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 233, 75, 75)),
                      ),
                      IconButton(
                          color: const Color.fromARGB(255, 233, 75, 75),
                          onPressed: () {},
                          icon: const Icon(Icons.exit_to_app)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
