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
                        Navigator.of(context).pop();
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.minimize,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.8),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    height: 40,
                    width: 40,
                  ),
                ),
                Text("1"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.8),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    height: 40,
                    width: 40,
                  ),
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.8),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            )),
        height: 30,
      ),
    );
  }
}
