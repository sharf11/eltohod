import 'package:eltohod/homePage.dart';
import 'package:eltohod/main.dart';
import 'package:flutter/material.dart';

class bottomNavigationBar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return bottomNavigationBarState();
  }
}

class bottomNavigationBarState extends State<bottomNavigationBar> {
  myApp m=new myApp();
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  List<Widget> itemsUi = [
    homePage(),
    Container(
      child: Center(
        child: Text('second Page'),
      ),
    ),
    Container(
      child: Center(
        child: Text('Empty Page'),
      ),
    ),
    Container(
      child: Center(
        child: Text('third Page'),
      ),
    ),
    Container(
      child: Center(
        child: Text('forth Page'),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black12,
      showUnselectedLabels: true,
      elevation: 0,onTap: _onItemTapped,
      unselectedItemColor: Colors.black26,
      iconSize: 35,
      selectedItemColor: Color(m.mainColor),
      items: [
        BottomNavigationBarItem(
            icon: IconButton(
              autofocus: false,
              color: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
              icon: Icon(
                Icons.settings,
                size: 40,
                color: Colors.black,
              ),
            ),
            title: Text(
              "",
              style: TextStyle(fontSize: 5),
            )),
        BottomNavigationBarItem(
            icon: IconButton(
              autofocus: false,
              color: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, '/homePage');
              },
              icon: Icon(Icons.home, size: 40, color: Colors.black),
            ),
            title: Text(
              "",
              style: TextStyle(fontSize: 5),
            )),
        BottomNavigationBarItem(
            icon: IconButton(
              autofocus: false,
              color: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, '/signIn');
              },
              icon: Icon(Icons.person, size: 40, color: Colors.black),
            ),
            title: Text(
              "",
              style: TextStyle(fontSize: 5),
            )),
      ],
    );
  }
}
