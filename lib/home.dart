import 'package:flutter/material.dart';
import 'package:restaurant/proflefod.dart';

import 'main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'flutterLogo',
        child: GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => HeroExamplePage())),
          child: Container(
            height: 52,
            child: Image.network(
                'https://image.freepik.com/psd-gratuit/plat-poser-delicieux-fast-food-table-bois_23-2148321332.jpg'),
          ),
        ),
      ),
    );
  }
}
