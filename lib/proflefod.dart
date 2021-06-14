import 'package:flutter/material.dart';

import 'main.dart';

class HeroExamplePage extends StatelessWidget {
  final imag;

  const HeroExamplePage(this.imag);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'flutterLogo',
                child: GestureDetector(
                  onTap: () => Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => MyApp())),
                  child: Container(
                    height: 300,
                    child: InteractiveViewer(
                      child: FadeInImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imag),
                        placeholder: AssetImage('assets/images/image_fand'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 5000,
            )
          ]))
        ],
      ),
    );
  }
}
