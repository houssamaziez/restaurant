import 'package:ff1/Screens/Home/shopcard/FodCardSreen.dart';
import 'package:ff1/config/config.dart';
import 'package:ff1/config/config_home.dart';
import 'package:flutter/material.dart';

import 'Lists.dart';

// ignore: must_be_immutable
class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6D5D5),
      body: SafeArea(
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverAppBar(
              leading: Container(),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              expandedHeight: 300,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                // kyDrawer.currentState.openEndDrawer();
                              },
                              icon: Icon(
                                Icons.menu_sharp,
                                color: Colors.black,
                              )),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              push(context, ScreenFoodCard());
                            },
                            icon: Icon(
                              Icons.add_shopping_cart_sharp,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Make your own food,\nStay at home",
                              style: TextStyle(
                                  color: prykcolor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 11, right: 11, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: 40,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              labelText: "Search any racip ",
                              labelStyle: TextStyle(
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          controller: controller,
                          itemCount: list1.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, indext) {
                            return List1(
                              i: i,
                              imag: list1[indext]["imag"],
                              title: list1[indext]["title"],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              // ListView.builder(itemBuilder: (context, indext) {
              //   return List2(
              //     imag: list2[indext]['imag'],
              //   );
              // })

              ...list
                  .map((e) => List2(
                        imag: list2[e]['imag'],
                        title: "shdhsdh",
                      ))
                  .toList(),
            ]))
          ],
        ),
      ),
    );
  }

  int i = 1;
}
