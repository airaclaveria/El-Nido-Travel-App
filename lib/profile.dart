import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myprofile(),
    );
  }
}

class myprofile extends StatelessWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
          child: Column(
            children: <Widget>[
              Row(
                children: const [
                  Text(
                    "PROFILE",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "LOGOUT",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const CircleAvatar(
                backgroundImage: AssetImage('images/jis.jpeg'),
                radius: 100,
              ),
              const SizedBox(height: 10),
              const Text(
                "Aira Claveria",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Philippines",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              Container(
                color: Colors.white70,
                child: Column(
                  children: const <Widget>[
                    //previous tours
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Previous Tour",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    //hotel type
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hotel Type",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset("images/StandardDouble.jpg"),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text('Standard Double'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Tour",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //AVAILED TOUR TYPE
              Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset("images/biglagoonkayak.jpg"),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text('TOUR A'),
                        subtitle: Text('4 Destinations for Island Hopping.'),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
