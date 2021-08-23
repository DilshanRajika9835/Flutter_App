import 'package:flutter/material.dart';
import 'package:new_app/allCustomer.dart';
import 'package:new_app/home.dart';
//import 'package:new_app/view_all.dart';

import 'save_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    SaveCustomer(),
    //ViewAll(),
    AllCustomer(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('WELCOME FLUTTER!')),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'View',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.amber[800],
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
