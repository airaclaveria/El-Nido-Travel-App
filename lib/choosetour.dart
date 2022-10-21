import 'package:flutter/material.dart';
import 'package:travelapp/tour_a.dart';

class choosetour extends StatelessWidget {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 60, 20, 0),
              child: Text(
                "Choose Your Tour",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                //TOUR A
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tourA(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text(
                                'TOUR A',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'Most Affordable',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
                              child: Text(
                                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Image.asset('images/biglagoonkayak.jpg'),
                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [
                                FlatButton(
                                  textColor: const Color(0xFF6200EE),
                                  onPressed: () {
                                    // Perform some action
                                  },
                                  child: const Text('BOOK'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),

                //TOUR B
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text(
                              'TOUR B',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'Most Affordable',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
                            child: Text(
                              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          SizedBox(height: 12),
                          Image.asset('images/shimizubeach.jpg'),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: const Color(0xFF6200EE),
                                onPressed: () {
                                  // Perform some action
                                },
                                child: const Text('BOOK'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),

                //TOUR C
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text(
                              'TOUR C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'Most Affordable',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
                            child: Text(
                              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          SizedBox(height: 12),
                          Image.asset('images/snakeisland.jpg'),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: const Color(0xFF6200EE),
                                onPressed: () {
                                  // Perform some action
                                },
                                child: const Text('BOOK'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),

                //TOUR D
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text(
                              'TOUR D',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'Most Affordable',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
                            child: Text(
                              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          SizedBox(height: 12),
                          Image.asset('images/Romblon.jpg'),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: const Color(0xFF6200EE),
                                onPressed: () {
                                  // Perform some action
                                },
                                child: const Text('BOOK'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),

                //END OF TOUR
              ],
            ),
          ],
        ),
      ),
    );
  }
}
