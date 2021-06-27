import 'dart:ui';

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'houssam eddine aziez ',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('houssamaziez@gail.com'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          "Profail",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.black)),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          "Profail",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.black)),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          "Profail",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.black)),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          "Profail",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.black)),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          "Profail",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.black)),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          "Profail",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.black)),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
