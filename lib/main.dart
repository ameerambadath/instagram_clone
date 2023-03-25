import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login_Page.dart';
import 'nav_bar.dart';
import 'test/card.dart';
import 'test/textfield.dart';
import 'profile_pages/first_page.dart';
import 'test/texting.dart';
import 'test/color.dart';
import 'test/color2.dart';
 import 'profile_pages/first_page.dart';
import 'test/TABBAR.dart';
import 'test/Circavatar.dart';
import 'test/dummy.dart';
import 'profile_pages/notifications.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,

      theme: ThemeData.light(),
      home: LoginPage()
    );
  }
}

