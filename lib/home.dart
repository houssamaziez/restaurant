import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:restaurant/proflefod.dart';

import 'declrtion.dart';

StaggeredGridView buildStaggeredGridView() {
  return StaggeredGridView.countBuilder(
    crossAxisCount: 3,
    itemCount: list.length,
    itemBuilder: (context, index) => Container(
      child: Card(
        color: Color(0xFFF3F2F2),
        child: Hero(
          tag: 'flutterLogo',
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HeroExamplePage(Postfrm.urlimage(index)))),
            child: Container(
              height: Postfrm.hight(index).toDouble(),
              child: Image.network(Postfrm.urlimage(index)),
            ),
          ),
        ),
      ),
    ),
    staggeredTileBuilder: (index) => StaggeredTile.count(
        (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 3 : 1.5),
    mainAxisSpacing: 8.0,
    crossAxisSpacing: 8.0,
  );
}
