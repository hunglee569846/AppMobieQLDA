import 'dart:ui';

import 'package:flutter/material.dart';

class Customer_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //double wt = MediaQuery.of(context).size.width;
    double ht = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'cvb',
          onPressed: null,
        ),
        title: Text('Hello'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: null,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                IconButton(
                  // padding: EdgeInsets.all(20.0),
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                  tooltip: 'chi nhanh',
                  onPressed: null,
                  iconSize: 40.0,
                ),
                Text(
                  'Chi nhánh mạc định',
                  style: TextStyle(color: Colors.green, fontSize: 16.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  tooltip: 'Search langguer',
                  padding: EdgeInsets.all(20.0),
                  onPressed: null,
                  iconSize: 40.0,
                ),
                Text(
                  'Ngôn ngữ',
                  style: TextStyle(color: Color(0xFF253840), fontSize: 16.0),
                )
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.all(20.0),
                  icon: Icon(
                    Icons.thermostat_sharp,
                    color: Colors.green,
                    size: 40.0,
                  ),
                  onPressed: null,
                  tooltip: 'Seting display',
                ),
                Text(
                  'Giao dien',
                  style: TextStyle(color: Color(0xFF253840), fontSize: 16.0),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black38)),
                )
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.all(20.0),
                  icon: Icon(
                    Icons.settings,
                    color: Colors.red,
                  ),
                  tooltip: 'Setup Accout',
                  onPressed: null,
                  iconSize: 40.0,
                ),
                Text(
                  'Thiet lap tai khoan',
                  style: TextStyle(color: Color(0xFF253840), fontSize: 16.0),
                )
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.all(20.0),
                  icon: Icon(
                    Icons.logout,
                    color: Color(0xFF253840),
                  ),
                  tooltip: 'LogOut',
                  onPressed: null,
                  iconSize: 40.0,
                ),
                Text(
                  'Dang xuat',
                  style: TextStyle(color: Colors.red, fontSize: 16.0),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
