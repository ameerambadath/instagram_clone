// // import 'package:flutter/material.dart';
//
// class Tabbarr extends StatelessWidget {
//   const Tabbarr({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//      return   DefaultTabController(
//        length: 2,
//        child: Scaffold(
//          appBar: AppBar(
//            title: Text('Flutter Tabs Demo'),
//            bottom: TabBar(
//              tabs: [
//                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
//                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
//              ],
//            ),
//          ),
//          body: TabBarView(
//            children: [
//             Text("FIRST PAGE"),
//              Text("SECONDPAGE"),
//            ],
//          ),
//        ),
//       );
//   }
// }