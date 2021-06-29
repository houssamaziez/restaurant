import 'package:ff1/Screens/Home/shopcard/FodCardSreen.dart';
import 'package:ff1/config/config.dart';
import 'package:ff1/config/config_home.dart';
import 'package:flutter/material.dart';

class MyProdact extends StatelessWidget {
  final imag;
  const MyProdact({Key? key, this.imag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6D5D5),
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        push(context, ScreenFoodCard());
                      },
                      icon: Icon(
                        Icons.add_shopping_cart_sharp,
                        color: Colors.black,
                        size: 27,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  height: 30,
                  width: 50,
                ),
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )),
            centerTitle: true,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
              background: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                imag,
                              )),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Fish mchwiy bnin',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.star_border_purple500_outlined,
                    color: Colors.black,
                  ),
                ),
                Text(" 5 review"),
                Spacer(),
                Text("3"),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 15),
              child: Text(
                "fdfbfdr rdgd  r gdr gdedfefr dr gzecefz ec ecef ze cze czeczec  ceeeeeeeeeeec ec edrg drg dr gdr drgdrgdrgdrgdrg",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              height: 5000,
            )
          ]))
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
        child: Container(
          height: MediaQuery.of(context).size.width * 0.088,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red.withOpacity(0.66),
                Colors.red.withOpacity(0.8),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              )),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Text(
                    "50 DA",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.066,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  " Add to cart ",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
