import 'package:flutter/material.dart';
import 'package:travelapp/bottomnav.dart';
import 'login.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travelapp/bottomnav.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/elnidobg2.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 385, 0, 0),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "El Nido, \nPhilippines",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 20, 0),
                  child: Text(
                      "We will provide you the more affordable package tour and hotel rates through this app. This is more convenient and affordable than buying some accomodations from tour packages",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 110, 20, 0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: const <Widget>[
                          Text("Starts from",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          Text(
                            "Php 1200.00",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 31.0, right: 20.0),
                        child: Builder(builder: (context) {
                          return RaisedButton(
                            child: Row(
                              children: const <Widget>[
                                Text(
                                  "Explore Now",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            color: Colors.white,
                            textColor: Colors.black,
                            padding: EdgeInsets.all(10.0),
                            splashColor: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()));
                            },
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
