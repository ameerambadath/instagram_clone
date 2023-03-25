// import 'package:flutter/material.dart';
// import './main.dart';
// class TextField23 extends StatelessWidget {
//   const TextField23({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:
//       AppBar(
//         title: Text("AUTHONTICATION PAGE"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(100.0),
//           child: Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: TextField(
//
//                     keyboardType: TextInputType.name,
//                     style: TextStyle(fontSize: 20),
//
//                     decoration: InputDecoration(labelText: "user name",
//                     hintText: "enter your name here",
//                     suffixIcon: Icon(Icons.person),
//                     border: OutlineInputBorder()),
//
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: TextField(
//                       keyboardType: TextInputType.emailAddress,
//                     style: TextStyle(fontFamily: AutofillHints.url,fontSize: 20),
//                     decoration: InputDecoration(labelText: "email ID:",
//                     hintText: "enter your email",
//                     suffixIcon: Icon(Icons.email),
//                     border: OutlineInputBorder()),
//
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: TextField(
//                     textAlign:TextAlign.center,
//                     keyboardType: TextInputType.number,
//                     obscureText: true,
//                     style: TextStyle(fontSize: 20),
//                     decoration: InputDecoration(labelText: "password",
//                     hintText: "enter your pasword",
//                     suffixIcon: Icon(Icons.password),
//                         border:OutlineInputBorder()),
//
//                   ),
//                 ),
//               Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: ElevatedButton(onPressed: (){}, child: Text('Sign in')),
//               )
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     );
//   }
// }
