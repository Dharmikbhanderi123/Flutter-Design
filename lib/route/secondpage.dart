// ignore_for_file: unnecessary_this

import 'package:flutter_application_1/route/thirdpage.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fill Up Details")),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const ListTile(
            title: Text("1.ENTER YOUR FULL NAME"),
          ),
          buildNnumberTextField(),
          const ListTile(
            title: Text("2.ENTER YOUR MOBILE NO"),
          ),
          buildnumberstextfield(),
          const ListTile(
            title: Text("3. ENTER YOUR PASSWORD"),
          ),
          buildnumbersstextfield(),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const ThirdPage());
            },
            child: const Center(
              child: Text(
                'Countinue',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNnumberTextField() {
    return TextField(
      decoration: InputDecoration(
        icon: const Icon(Icons.person_add_rounded),
        hintText: "ENTER YOUR NAME",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget buildnumberstextfield() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: const Icon(Icons.person_add_alt_rounded),
        hintText: "Mobile No",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  bool _showpassword = true;
  Widget buildnumbersstextfield() {
    return TextField(
      obscureText: _showpassword,
      decoration: InputDecoration(
        hintText: "PASSWORD",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        icon: const Icon(Icons.security_outlined),
        suffixIcon: IconButton(
          icon: const Icon(Icons.remove_red_eye_outlined),
          color: _showpassword ? Colors.red : Colors.yellow,
          onPressed: () {
            setState(() => this._showpassword = !this._showpassword);
          },
        ),
      ),
    );
  }
}
