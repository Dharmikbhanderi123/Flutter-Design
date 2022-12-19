import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/*class Myapp13 extends StatelessWidget {
  const Myapp13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'checkbox',
      home: Profilepage(),
    );
  }
}*/

class Profilepage extends StatefulWidget {
  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Textfield")),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ListTile(
            title: Text("1.ENTER YOUR FULL NAME"),
          ),
          buildNnumberTextField(),
          ListTile(
            title: Text("2.ENTER YOUR MOBILE NO"),
          ),
          buildnumberstextfield(),
          ListTile(
            title: Text("3. ENTER YOUR PASSWORD"),
          ),
          buildnumbersstextfield(),
          ListTile(
            title: Text("1.ENTER YOUR FULL NAME"),
          ),
          buildNnumber4TextField(),
          ListTile(
            title: Text("2.ENTER YOUR MOBILE NO"),
          ),
          buildnumbers5textfield(),
          ListTile(
            title: Text("3. ENTER YOUR PASSWORD"),
          ),
          buildnumberss6textfield(),
          ListTile(
            title: Text("1.ENTER YOUR FULL NAME"),
          ),
          buildNnumber7TextField(),
          ListTile(
            title: Text("2.ENTER YOUR MOBILE NO"),
          ),
          buildnumbers8textfield(),
          ListTile(
            title: Text("3. ENTER YOUR PASSWORD"),
          ),
          buildnumberss9textfield(),
        ],
      ),
    );
  }

  Widget buildNnumberTextField() {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.person_add_rounded),
        hintText: "ENTER YOUR NAME",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget buildnumberstextfield() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(Icons.person_add_alt_rounded),
        hintText: "Mobile No",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  bool obscureText = false;
  Widget buildnumbersstextfield() {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: "PASSWORD",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        icon: Icon(Icons.security_outlined),
        suffixIcon: IconButton(
          icon: Icon(Icons.remove_red_eye_outlined),
          color: this.obscureText ? Colors.red : Colors.yellow,
          onPressed: () {
            setState(() => this.obscureText = !this.obscureText);
          },
        ),
      ),
    );
  }

  Widget buildNnumber4TextField() {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.person_add_rounded),
        hintText: "ENTER YOUR NAME",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget buildnumbers5textfield() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(Icons.person_add_alt_rounded),
        hintText: "Mobile No",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  //bool obscureText = false;
  Widget buildnumberss6textfield() {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: "PASSWORD",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        icon: Icon(Icons.security_outlined),
        suffixIcon: IconButton(
          icon: Icon(Icons.remove_red_eye_outlined),
          color: this.obscureText ? Colors.red : Colors.yellow,
          onPressed: () {
            setState(() => this.obscureText = !this.obscureText);
          },
        ),
      ),
    );
  }

  Widget buildNnumber7TextField() {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.person_add_rounded),
        hintText: "ENTER YOUR NAME",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget buildnumbers8textfield() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(Icons.person_add_alt_rounded),
        hintText: "Mobile No",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  // bool obscureText = false;
  Widget buildnumberss9textfield() {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: "PASSWORD",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        icon: Icon(Icons.security_outlined),
        suffixIcon: IconButton(
          icon: Icon(Icons.remove_red_eye_outlined),
          color: this.obscureText ? Colors.red : Colors.yellow,
          onPressed: () {
            setState(() => this.obscureText = !this.obscureText);
          },
        ),
      ),
    );
  }
}
