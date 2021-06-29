import 'package:flutter/material.dart';

class ScreenFoodCard extends StatefulWidget {
  const ScreenFoodCard({Key? key}) : super(key: key);

  @override
  _ScreenFoodCardState createState() => _ScreenFoodCardState();
}

class _ScreenFoodCardState extends State<ScreenFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Item Card',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your Food Card',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              card(context),
              card(context),
              card(context),
              card(context),
              card(context),
              card(context),
              card(context),
            ],
          )),
        ],
      ),
    );
  }

  Padding card(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12.0,
        left: 12.0,
        top: 8.0,
        bottom: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFFFF5F5),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            )),
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "images/A2.jpg",
                        ),
                      ),
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.3),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Gridlle Slmon \n 85 DA '),
                    ),
                    Row(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'images/MOIN.png',
                                fit: BoxFit.cover,
                              )),
                          height: MediaQuery.of(context).size.height * 0.066,
                          width: MediaQuery.of(context).size.height * 0.066,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('1'),
                        ),
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'images/PLUS.png',
                                fit: BoxFit.cover,
                              )),
                          height: MediaQuery.of(context).size.height * 0.066,
                          width: MediaQuery.of(context).size.height * 0.066,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
