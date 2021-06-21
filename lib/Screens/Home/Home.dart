import 'package:ff1/config/config_home.dart';
import 'package:flutter/material.dart';

import 'Screens/ScreenHome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedScreenIndex = 0;
  final index = 0.0;

  List _screens = [
    {"screen": ScreenHome(), "title": "Screen A Title"},
    {"screen": ScreenHome(), "title": "Screen B Title"},
  ];
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
    if (_selectedScreenIndex == 0) {
      back();
    }
  }

  back() {
    controller.animateTo(index,
        duration: Duration(milliseconds: 1500), curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 12,
        currentIndex: _selectedScreenIndex,
        selectedFontSize: 16,
        selectedIconTheme: IconThemeData(size: 25),
        unselectedIconTheme: IconThemeData(size: 20),
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Screen A',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Screen B"),
        ],
      ),
    );
  }
}
