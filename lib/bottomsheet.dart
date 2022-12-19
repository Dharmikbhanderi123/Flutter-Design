import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profiles1 extends StatefulWidget {
  @override
  State<Profiles1> createState() => _Profiles1State();
}

class _Profiles1State extends State<Profiles1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BOTTOM SHEET")),
      body: Builder(
        builder: (context) => Center(
          child: ElevatedButton(
            child: Text("bottomsheet"),
            onPressed: () {
              //  Navigator.pop(context);
              showBottomSheet(
                context: context,
                builder: (BuildContext mContext) {
                  return Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.home_sharp),
                          title: Text("HOME"),
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("SETTING"),
                        ),
                        ListTile(
                          leading: Icon(Icons.bookmark_add_rounded),
                          title: Text("BOOKMARK"),
                        ),
                        ListTile(
                          leading: Icon(Icons.logout_sharp),
                          title: Text("LOGOUT"),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
