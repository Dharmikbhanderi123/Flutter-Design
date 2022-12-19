import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// import 'package:flutter_application_1/material_components.dart';
enum Menu { itemOne, itemTwo, itemThree, itemFour }

class buttons extends StatelessWidget {
  const buttons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '_title',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _selectedMenu = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton<Menu>(
              onSelected: (Menu item) {
                setState(() {
                  _selectedMenu = item.name;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                    const PopupMenuItem<Menu>(
                      value: Menu.itemOne,
                      child: Text('item 1'),
                    ),
                    const PopupMenuItem<Menu>(
                      value: Menu.itemTwo,
                      child: Text('item 2'),
                    ),
                    const PopupMenuItem<Menu>(
                      value: Menu.itemThree,
                      child: Text('item 3'),
                    ),
                    const PopupMenuItem<Menu>(
                      value: Menu.itemFour,
                      child: Text('item 4'),
                    ),
                  ])
        ],
      ),
      body: Center(
        child: Text('_selectedMenu: $_selectedMenu'),
      ),

      //ICON BUTTON
      /* child: Center(
          child: IconButton(
            icon: Icon(Icons.bubble_chart),
            onPressed: () {},
            iconSize: 75,
            tooltip: 'bubbbel',
            color: Colors.blueGrey,
            disabledColor: Colors.red,
            splashColor: Colors.yellow,
            hoverColor: Colors.brown,
          ),
        ),
      */

      //FLOATING ACTION BUTTON
      /* child: Text("Floating Action Button"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        foregroundColor: Colors.red,
        backgroundColor: Colors.greenAccent,
        mini: false,
        elevation: 20,
        highlightElevation: 50,
        // shape: RoundedRectangleBorder(
        //   side: BorderSide(width: 3, color: Colors.black)
        //borderRadius: BorderRadius.all(Radius.circular(25)),
      ),*/

      //ELEVATED BUTTON
      /*child: ElevatedButton(
          child: Text('Button'),
          onPressed: () {
            print('Press');
          },
          onLongPress: () {
            print('loag press');
          },
        ),*/

      //DROPDOWN BUTTON
      /*child: DropdownButton(
            value: "abc",
            items: [
              DropdownMenuItem(
                child: Text("abc"),
                value: "abc",
              ),
              DropdownMenuItem(child: Text("xyz"), value: "xyz"),
              DropdownMenuItem(child: Text("test"), value: "test"),
            ],
            onChanged: (value) {
              print("charged");
            }),
      ),*/
    );
  }
}
