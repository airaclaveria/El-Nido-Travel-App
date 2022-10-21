import 'dart:convert';

import 'package:flutter/material.dart';
import 'choosetour.dart';

class tourA extends StatefulWidget {
  const tourA({Key? key}) : super(key: key);

  @override
  _tourAState createState() => _tourAState();
}

String myStringWithLinebreaks =
    "Shimizu Island\nPapaya Beach\nBig Lagoon\nSecret Lagoon";

class _tourAState extends State<tourA> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //widget 1
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 300, 0),
                child: InkWell(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pop(context, true);
                  },
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "TOUR A",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Destinations",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              //widget 2
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      //IMAGE 1
                      Container(
                        width: 220.00,
                        height: 350.00,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage("images/Shimizu Island.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 4,
                      ),

                      //IMAGE 2
                      Container(
                        width: 220.00,
                        height: 350.00,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage("images/Papaya Beach.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 4,
                      ),

                      //Big Lagoon
                      Container(
                        width: 220.00,
                        height: 350.00,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage("images/Big Lagoon.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 4,
                      ),

                      //secrete lagoon
                      Container(
                        width: 220.00,
                        height: 350.00,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage("images/Secret Lagoon.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //widget 3 from column
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "The Most Affordable",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Text(
                  "El Nido Secret Lagoon can only be accessed by boat on one of the El Nido Island Hopping Tours. What is this? More specifically, El Nido Tour A is the only boat tour that operates trips to Secret Lagoon Palawan.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //Destinations
              ListTile(
                title: Text("Destinations"),
                subtitle: Column(
                  children: LineSplitter.split(myStringWithLinebreaks).map((o) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("• "),
                        Expanded(
                          child: Text(o),
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),

              ButtonBar(
                buttonMinWidth: 300,
                buttonHeight: 50,
                alignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    highlightColor: const Color(0xFF6200EE),
                    textColor: const Color(0xFF6200EE),
                    color: Colors.white,
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('ADD TO CART'),
                  ),
                ],
              ),

              //button add to cart
            ],
          ),
        ),
      ),
    );
  }
}
