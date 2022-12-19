import 'dart:async';
import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class table1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ONLINE SHOPPING APP"),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'data:image/jpeg;base64,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',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹449',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm8TpOLNbjcuZ6ptMtZlP_bT9zCrEHm-X7vA&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹555',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs-zzt4rS6wMu-Z2sK9NsjTXF9K30dfmQJUA&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹499',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'data:image/jpeg;base64,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',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹549',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'data:image/jpeg;base64,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',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹649',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlZ8zEpR_3mSGVpFf_dVh_7p2S5ArJCKI8SeeCVUc5HCpdKQNt6k_14kUbyEpFjAQIe9k&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹649',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwGzboMf-c6exy2zHbePidab5jMJANY2zenA&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹499',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1h8JCp0lcO54UJuw6n2IoikVJG75mx8IZ9A&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹549',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQytdXjH_XuER6fy_LgqOOJLCBYCawvYM_D8A&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹499',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR0yZ98W7xG0eJdIvF9SMQMViVdn_NMG80JA&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹599',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWJuq5Nr-l1jFyacs0xxJxvM_NqL9qRzvDlw&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹699',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJVAqG-QvAisPZqMqc1LmnP1rD0uRulLjcUw&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹549',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTumoFvBkRoyz2zU6w_13uSNHyrEubNKqcBRg&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹666',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS57dgNb2JmdS8-bFW_8t8NsToO6dhmy_ndwg&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹599',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnjps8cim5tGe888HJf8YPkAPE-6_XW710Pw&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹699',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt5IWg3gf3HyyHgMdKJsn3GlK1GC10DCJ2zg&usqp=CAU',
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 90),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('Buy Clicked');
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.redAccent,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 152, left: 5),
                      child: Text(
                        '₹599',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
