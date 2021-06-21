import 'package:ff1/config/config.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  final imag, title;

  const List1({this.imag, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: prykcolor.withOpacity(0.2),
            ),
            height: 65,
            width: 80,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Image.asset(
                  imag,
                  fit: BoxFit.cover,
                )),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class List2 extends StatelessWidget {
  final imag, title;

  const List2({Key? key, this.imag, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            bottom: 8.0,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imag),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 15),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: prykcolor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 15),
          child: Text(
            "fdfbfdr rdgd  r gdr gdr dr gdrg drg dr gdr drgdrgdrgdrgdrg",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
