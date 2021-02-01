import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  //MyAppBar({this.title});
  // final Widget title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double ht = MediaQuery.of(context).size.height;
    return Row(
      children: <Widget>[
        // SafeArea(
        //   top: true,
        // )
      ],
    );
  }
}

// class MyScannfflold extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Material(
//       child: Column(
//         children: <Widget>[
//           MyAppBar(
//             title: Text("title MyApp",
//                 style: Theme.of(context).primaryTextTheme.title),
//           ),
//           IconButton(
//               icon: Icon(Icons.settings), tooltip: 'abc', onPressed: null)
//         ],
//       ),
//     );
//   }
// }
