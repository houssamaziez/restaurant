import 'package:ff1/Screens/Home/Screens/ScreenHome.dart';
import 'package:ff1/Screens/Home/Screens/ScreenMenu.dart';
import 'package:flutter/material.dart';

var controller = ScrollController();
var list = List.generate(list2.length, (index) => index);
GlobalKey<ScaffoldState> kyDrawer = GlobalKey<ScaffoldState>();
List screens = [
  {"screen": ScreenHome(), "title": "Screen A Title"},
  {"screen": ScreenHome(), "title": "Screen B Title"},
  {"screen": Menu(), "title": "Screen c Title"},
];
var list1 = [
  {
    "id": "0",
    'title': 'Popular',
    "imag": "images/img1.png",
  },
  {
    "id": "2",
    'title': 'Coffee',
    "imag": "images/img2.png",
  },
  {
    "id": "3",
    'title': 'Drinks',
    "imag": "images/img3.png",
  },
  {
    "id": "4",
    'title': 'Pizza',
    "imag": "images/pizza.png",
  },
  {
    "id": "5",
    'title': 'Salad',
    "imag": "images/salad.png",
  },
  {
    "id": "6",
    'title': 'Asian',
    "imag": "images/imag4.png",
  },
];
var list2 = [
  {
    "id": "1",
    'title': 'Popular',
    "imag": "images/A0.jpg",
  },
  {
    "id": "2",
    'title': 'Coffee',
    "imag": "images/A1.jpg",
  },
  {
    "id": "3",
    'title': 'Drinks',
    "imag": "images/A2.jpg",
  },
  {
    "id": "4",
    'title': 'Pizza',
    "imag": "images/A3.jpg",
  },
  {
    "id": "5",
    'title': 'Salad',
    "imag": "images/A4.jpg",
  },
  {
    "id": "6",
    'title': 'Asian',
    "imag": "images/A6.jpg",
  },
];
