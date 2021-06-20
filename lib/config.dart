import 'package:flutter/material.dart';

pop(context, page) {
  Navigator.pop(context);
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return page;
  }));
}

bool isConnected = true;

mobileheight(context) {
  return MediaQuery.of(context).size.height;
}

Color prykcolor = Color(0xFFD26049);

var pageview = [
  {
    "title": "Find the foods you love",
    "info": "The best food you find in  the\n application ",
    "image": "images/tips1.png",
  },
  {
    "title": "Fast Delivery",
    "info": "Fast delivry to your home ,  offic and wherever \nyou are",
    "image": "images/tips2.jpg",
  },
  {
    "title": "LIve tracking",
    "info": "Real time tracking of your food en the app \nafter ordered ",
    "image": "images/tips3.jpg",
  }
];
