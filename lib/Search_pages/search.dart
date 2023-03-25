import 'package:flutter/material.dart';
import 'package:practice_demo/Reels_pages/reels.dart';
import 'package:practice_demo/Search_pages/search_image_page.dart';
import '../main.dart';
import '../AccountPages/account.dart';
import '../Addpost_page/add_post.dart';
import '../profile_pages/first_page.dart';
var size,height,width;

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            height: height*0.1,
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.name,
                // obscureText: true,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Search",
                    contentPadding: EdgeInsets.only(top: 10),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    )),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Expanded(
              flex: 0,
              child: ListView.builder(
                itemCount: 7,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index)
                  {

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                       margin: EdgeInsets.only(bottom: 1,right: 1),
                      child:
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SearchImagePage();
                          },));
                        },
                        child: Image.network(
                          "https://images.unsplash.com/photo-1677442992214-d5305c0bec2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                          fit: BoxFit.fill,),
                      ),
                      height: height * 0.15,
                      width: width * 0.33,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 1,right: 1),
                      child:
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SearchImagePage();
                          },));
                        },
                        child: Image.network(
                          "https://images.unsplash.com/photo-1677431568664-3522922ce759?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                          fit: BoxFit.fitHeight,),
                      ),
                      height: height * 0.15,
                      width: width * 0.33,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 1,right: 1),
                      child:
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SearchImagePage();
                          },));
                        },
                        child: Image.network(
                          "https://images.unsplash.com/photo-1677446412590-e8e4615b835f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                          fit: BoxFit.fitWidth,),
                      ),
                      height: height * 0.15,
                      width: width * 0.33,
                      color: Colors.white,
                    ),
                  ],


                );
              }

    ),
            ),

              ],
            ),


        ),

      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   child: Container(
      //     height: 70,
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
