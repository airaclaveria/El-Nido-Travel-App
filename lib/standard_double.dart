import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/hotel.dart';

class StandardDouble extends StatefulWidget {
  StandardDouble({Key? key}) : super(key: key);

  @override
  _StandardDoubleState createState() => _StandardDoubleState();
}

class _StandardDoubleState extends State<StandardDouble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              InkWell(
                child: Icon(Icons.arrow_back_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => hotel()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
