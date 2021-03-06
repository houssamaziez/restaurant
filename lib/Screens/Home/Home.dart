import 'package:ff1/Screens/Home/drawer/MyDrawer.dart';
import 'package:ff1/config/config_home.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedScreenIndex = 0;
  final index = 0.0;

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
      key: kyDrawer,
      drawer: MyDrawer(),
      body: screens[_selectedScreenIndex]["screen"],
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
              icon: Icon(Icons.restaurant_menu_outlined), label: "Screen B"),
          BottomNavigationBarItem(
            icon: InkWell(
              child: Icon(Icons.person),
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
