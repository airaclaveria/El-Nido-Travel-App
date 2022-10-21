import 'package:flutter/material.dart';
import 'package:travelapp/bottomnav.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/elnidobg2.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 140, 0, 0),
            child: Column(
              children: const <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Let's Go!",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Travelling Around the Philippines",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 230),
                mycustomform(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class mycustomform extends StatefulWidget {
  const mycustomform({Key? key}) : super(key: key);

  @override
  _mycustomformState createState() => _mycustomformState();
}

class _mycustomformState extends State<mycustomform> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //username container
        Container(
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 1, color: Colors.white, style: BorderStyle.solid)),
          child: TextField(
            decoration: const InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none),
            onChanged: (text) {
              print("aira claveria username");
            },
          ),
        ),
        SizedBox(height: 8),

        //password container
        Container(
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 1, color: Colors.white, style: BorderStyle.solid)),
          child: TextField(
            decoration: const InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none),
            onChanged: (text) {
              print("aira claveria password");
            },
          ),
        ),
        Container(
          width: 300,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text("LOGIN"),
          ),
        ),

        const SizedBox(
          height: 50,
        ),

        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
