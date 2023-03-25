// // import 'package:flutter/material.dart';
// class Abcd extends StatelessWidget {
//   const Abcd({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(backgroundColor:Colors.cyan),
//       home: Homescreen(),
//
//     );
//   }
// }
// class Homescreen extends StatelessWidget {
//   const Homescreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.indigo,
//
//         title:Text("MY NEW APP",
//             style: TextStyle(fontSize: 25)),
//         centerTitle: true,
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.person))
//         ],),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Row(
//             children: [
//               Container(
//                 color: Colors.green,
//                 width:232,
//                 height: 213,
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.red,
//                   width:230,
//                   height: 213,
//                 ),
//               ),
//
//
//             ],
//           ),
//           Row(
//             children: [
//               Container(
//                 color: Colors.blue,
//                 width: 155,
//                 height: 213,
//               ),
//               Container(
//                 color: Colors.red,
//                 width: 155,
//                 height: 213,
//               ),
//
//               Expanded(
//                 child: Container(
//                   color: Colors.blue,
//                   width: 148,
//                   height: 213,
//                 ),
//
//               )
//             ],
//           ),
//           Row(
//             children: [
//               Container(
//                 color: Colors.yellow,
//                 width: 155,
//                 height: 212,
//               ),
//               Container(
//                 color: Colors.blue,
//                 width: 155,
//                 height: 212,
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.yellow,
//                   width: 148,
//                   height: 212,
//                 ),
//               )
//             ],
//           ),
//           Row(
//             children: [
//               Container(
//                 color: Colors.yellow,
//                 width: 148,
//                 height: 212,
//               ),
//               Container(
//                 color: Colors.yellow,
//                 width: 148,
//                 height: 212,
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.yellow,
//                   width: 148,
//                   height: 212,
//                 ),
//               ),
//             ],
//           )
//         ],
//
//       ),
//
//     );
//   }}