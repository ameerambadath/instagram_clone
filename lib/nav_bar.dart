import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';
import 'package:practice_demo/profile_pages/first_page.dart';
import 'package:practice_demo/Reels_pages/reels.dart';
import 'package:practice_demo/Search_pages/search.dart';
import 'profile_pages/first_page.dart';
import 'Addpost_page/add_post.dart';


class Navbar extends StatefulWidget {
   const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
var size,width,height;
final screens=[MainPage(),Search(),AddPost(),Reels(videoUrl: 'https://library.animatron.io/templates/9cb2f36302a9002978b47373/instagram_story_hd720.mp4',),Account()];


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor:Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[850],
          // selectedFontSize: 14,
          // unselectedFontSize: 14,
          onTap: (value) {
            setState(() => _currentIndex = value);
          },

          items: [
            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: "",

            ),
            BottomNavigationBarItem(

              icon: Icon(Icons.search),
              label: ''
            ),
            BottomNavigationBarItem(

              icon: Icon(Icons.add_box),
              label: ''
            ),
            BottomNavigationBarItem(

              icon: Icon(Icons.slideshow),
              label: ''
            ),
            BottomNavigationBarItem(

              icon: Icon(Icons.account_circle),
               label: ''
            ),
          ],
        ),
    body: screens[_currentIndex],
    );
  }
}
