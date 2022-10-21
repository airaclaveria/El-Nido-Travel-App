import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/hotel.dart';
import 'package:travelapp/choosetour.dart';
import 'package:travelapp/pay.dart';
import 'package:travelapp/profile.dart';
import 'homemain.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black45,
        backgroundColor: Colors.black,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        unselectedLabelStyle:
            TextStyle(fontWeight: FontWeight.normal, color: Colors.deepPurple),
        onTap: (newIndex) => setState(() {
          _currentIndex = newIndex;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "Home",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            title: Text(
              "Hotel",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tour),
            title: Text("Tours"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text("Pay"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Profile"),
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          HomeMain(),
          hotel(),
          choosetour(),
          pay(),
          profile(),
        ],
      ),
    );
  }
}
