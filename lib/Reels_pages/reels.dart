// import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:practice_demo/Reels_pages/reel_detailes.dart';
import 'package:practice_demo/Reels_pages/reels_side_bar.dart';
import 'package:practice_demo/Search_pages/search.dart';
import 'package:video_player/video_player.dart';


import '../AccountPages/account.dart';
import '../Addpost_page/add_post.dart';
import '../profile_pages/first_page.dart';
var size,height,width;

class Reels extends StatefulWidget {
  final String videoUrl;
   Reels({required this.videoUrl});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)

      ..initialize().then((_) {
        setState(() {
          _controller.play();
          _controller.setLooping(true);
        });
      });
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;

    return Scaffold(
    extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title:Text("Reels",style: TextStyle(fontSize: 30),
        ),
      actions:[
        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)),
       ],
    ),

      body:
    PageView.builder(
    itemCount: 5,
    scrollDirection: Axis.vertical,

    itemBuilder:  (context, index) {
      return Container(
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.black),
        //     image: DecorationImage(image: NetworkImage(""),
        // fit: BoxFit.cover)),
        child: Center(
          child: Stack(
            children: [
              _controller.value.isInitialized
                  ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  children: [
                    VideoPlayer(_controller),
                    _isPlaying
                        ? Container()
                        : Center(child: Text('')),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(_controller.value.isPlaying){
                            _controller.pause();
                          }else{
                            _controller.play();
                          }
                        });

                      },

                    ),
                  ],
                ),
              )
                  : Center(child: Text('')),
              Container(
                decoration: BoxDecoration(
                  gradient:LinearGradient(
                    colors: [Colors.black.withOpacity(0.3),
                      Colors.transparent],
                    begin: Alignment(0,-0.75),
                    end: Alignment(0,0.1)
                  ) ,


                ),
              ),
              Container(
                decoration:  BoxDecoration(
              gradient:LinearGradient(
      colors: [Colors.black.withOpacity(0.3),
      Colors.transparent],
      end: Alignment(0,-0.75),
      begin: Alignment(0,0.1)
      ) ,
              ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 12,
                          child: ReelsDetailes()
                      ),
                      Flexible(
                        flex: 2,
                          child: ReelsSideBar(),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      );

    },
    ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   child: Container(
      //     height: height*0.07,
      //     color: Colors.white,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         IconButton(
      //           onPressed: () {
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (context) {
      //               return MainPage();
      //             }));
      //           },
      //           icon: Icon(
      //             Icons.home,
      //             color: Colors.black,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (context) {
      //               return Search();
      //             }));
      //           },
      //           icon: Icon(
      //             Icons.search,
      //             color: Colors.black,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (context) {
      //               return AddPost();
      //             }));
      //
      //
      //           },
      //           icon: Icon(
      //             Icons.add_box,
      //             color: Colors.black,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (context) {
      //               return Reels(videoUrl: 'https://library.animatron.io/templates/9cb2f36302a9002978b47373/instagram_story_hd720.mp4',);
      //             }));
      //           },
      //           icon: Icon(
      //             Icons.slideshow,
      //             color: Colors.black,
      //           ),
      //         ),
      //         IconButton(
      //             onPressed: () {
      //               Navigator.of(context)
      //                   .push(MaterialPageRoute(builder: (context) {
      //                 return Account();
      //               }));
      //             },
      //             icon: Icon(
      //               Icons.account_circle,
      //               color: Colors.black,
      //             ))
      //       ],
      //     ),
      //   ),
      // ),
    );


  }
}
