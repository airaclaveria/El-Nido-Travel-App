import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:travelapp/hotel.dart';
import 'package:travelapp/login.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    CarouselSlider(
                      items: [
                        //first image try
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage('images/shimizubeach.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),

                        //2nd image try
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage('images/snakeisland.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),

                        //3rd image try
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  ExactAssetImage('images/biglagoonkayak.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],

                      //slider container properties
                      options: CarouselOptions(
                        height: 470.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 600),
                        viewportFraction: 0.8,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "El Nido, Palawan",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "El Nido is a Philippine municipality on Palawan island. It’s known for white-sand beaches, coral reefs and as the gateway to the Bacuit archipelago, a group of islands with steep karst cliffs. Miniloc Island is famed for the clear waters of its Small and Big lagoons. Nearby Shimizu Island has fish-filled waters. The area has many dive sites, including Dilumacad Island’s long tunnel leading to an underwater cavern.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                title: const Text(
                                  'TOUR UPDATE TODAY',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  'August 30, 2022',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
                                child: Text(
                                  'Due to weather conditions, some tours might suddenly get cancelled. Coast Guards from Puerto Princesa, Palawan usually decides about the tour operations.',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              SizedBox(height: 12),
                              Image.asset('images/Romblon.jpg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      );
}
