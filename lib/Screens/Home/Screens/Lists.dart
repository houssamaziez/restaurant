import 'package:ff1/Screens/Home/prodact/prodact_detail.dart';
import 'package:ff1/config/config.dart';
import 'package:ff1/config/config_home.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  final imag, title, i;

  List1({this.imag, this.title, this.i});

  @override
  _List1State createState() => _List1State();
}

class _List1State extends State<List1> {
  var hh = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              hh = widget.i;
              print(list1[widget.i]["id"]);
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // ignore: unrelated_type_equality_checks
                color: list1[widget.i]["id"] == hh ? prykcolor : Colors.white,
              ),
              height: 65,
              width: 70,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: Image.asset(
                    widget.imag,
                    fit: BoxFit.cover,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          widget.title,
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
            child: InkWell(
              onTap: () => push(
                  context,
                  MyProdact(
                    imag: imag,
                  )),
              child: Container(
                height: 52,
                child: Image.asset(
                  imag,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
