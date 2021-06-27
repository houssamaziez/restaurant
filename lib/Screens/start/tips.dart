import 'package:ff1/Screens/screen_login_Signup/Signup.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import '../../config/config.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              height: (mobileheight(context) / 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: prykcolor,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              )),
          Expanded(
            flex: 3,
            child: Container(
              child: PageIndicatorContainer(
                shape: IndicatorShape.circle(),
                indicatorSelectorColor: Colors.red,
                indicatorColor: Colors.grey,
                align: IndicatorAlign.bottom,
                length: pageview.length,
                padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: PageView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: pageview.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, indext) {
                    return ScreenPageView(
                      image: pageview[indext]['image'],
                      info: pageview[indext]['info'],
                      title: pageview[indext]['title'],
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {
                push(context, SignUp());
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: prykcolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                  ),
                  child: Text(
                    'Creat Account',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 8.0, right: 8.0, bottom: 20),
            child: MaterialButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.grey.shade400,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Continue with facebook',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenPageView extends StatelessWidget {
  final title;
  final info;
  final image;

  const ScreenPageView({this.title, this.info, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
            image,
            fit: BoxFit.cover,
          )),
          Text(
            title,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Text(info,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
