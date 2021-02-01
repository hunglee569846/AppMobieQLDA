import 'dart:html';

import 'package:flutter/material.dart';
import 'package:helloword/view/MyAppBar.dart';

class MyHomeScream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(),
        ],
      ),
    );
  }
}
