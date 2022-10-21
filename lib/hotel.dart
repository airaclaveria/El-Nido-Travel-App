import 'package:flutter/material.dart';
import 'standard_double.dart';

class hotel extends StatelessWidget {
  const hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text('Choose Your Room'),
              floating: true,
              expandedHeight: 100.0,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //CARD 1
              InkWell(
                child: Card(
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StandardDouble()),
                  );
                },
              ),

              //Card 2
              Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset("images/SDwithBalcony.jpeg"),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text('Standard Double with Balcony'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ],
                ),
              ),

              //CARD 3
              Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset("images/SDDeluxe.jpeg"),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text('Standard Deluxe Room'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ],
                ),
              ),

              //card 5
              Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset("images/twin.jpeg"),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text('Twin Room'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ],
                ),
              ),

              //CARD 6
              Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset("images/triple.jpeg"),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text('Triple Room'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ],
                ),
              ),

              //CARD 7
              Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset("images/quadroom.jpeg"),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text('Quadroom Room'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ],
                ),
              ),

              //card 8
              Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset("images/family.jpeg"),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text('Family Room'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
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
