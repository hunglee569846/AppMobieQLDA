import 'package:flutter/material.dart';
import 'package:helloword/view/MyAppBar.dart';
import 'package:helloword/view/customer_profile/screens/customer_info_screens.dart';
import 'package:helloword/view/customer_profile/screens2/customer_info.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'NailSpa',
    home: customer_info(), //MyScannfflold(),
  ));
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     //Set<>
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       home: (
//         title: Text(
//           'Fract',
//           style: Theme.of(context).primaryTextTheme.title,
//         ),
//       ),
//     );
//   }
// }
