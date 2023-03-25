import 'package:flutter/material.dart';
import 'package:practice_demo/Login_Page.dart';
import 'package:practice_demo/Reels_pages/reels.dart';
import 'package:practice_demo/Search_pages/search.dart';
import 'package:practice_demo/Search_pages/search_image_page.dart';
import 'menu/Achive.dart';

import 'menu/CFriends.dart';
import 'ContactPage.dart';
import 'menu/DigitalCollectabiles.dart';
import 'EditProfilePage.dart';
import 'menu/Favorites.dart';
import 'menu/QRcode.dart';
import 'menu/Saved.dart';
import 'menu/Settings.dart';
import 'ShareProfilePage.dart';
import 'menu/YourActivity.dart';
import 'account_image_view.dart';
import '../Addpost_page/add_post.dart';
import '../profile_pages/first_page.dart';
List headings2=["settings","your Activity","Achive","QR Code","Saved","Digital Collectabiles","Close Friends","Favorites"];
List menu_icons=[Icons.settings,Icons.update,Icons.history,Icons.qr_code,Icons.bookmark,Icons.beenhere,Icons.list,Icons.star];
List headings=["Reels","Post","Story","Story Heilights","Live","Guide"];
List create_Icons=[Icons.slideshow,Icons.grid_3x3,Icons.data_saver_on,Icons.favorite,Icons.sensors,Icons.menu_book];
List pages=[SettingsPage(), YourActivity(),const Achive(),const QrCode(),const Saved(),const DigitalCollectabiles(),const Friends(),Favorites()];

class CloseFriends {
}
var size,width,height;
List images = [
  "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/916068700/photo/teenage-boy-relaxing-in-his-bedroom.jpg?b=1&s=170667a&w=0&k=20&c=ef1pl0z9kDXXCTIlJujVxWS5GCHevuJ8Fz92UIsfl9E=",
  "https://images.unsplash.com/photo-1677431532210-19204d5eee40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",

  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRxgMaauODn8Cexg9txPokwf8ON-aNZXRHuQ&usqp=CAU"
];

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        title: TextButton(child: Text("adul7____  v",style: TextStyle(color: Colors.black)), onPressed: () {

        },),
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.expand_more,color: Colors.black)),
        //         // title: Text("ameer7____ ",  style: TextStyle(color: Colors.black)),
        // leading: TextButton.icon(onPressed: (){},label: Text('h'), icon: Icon(Icons.add_box) ),

        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                  context: context, builder: (context) {
                    return Container(
                      height: height/2.1,
                      width: width,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                                  child: Container(
                                    height: 5,
                                    width: 50,


                                    decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Create",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                              ],
                            ),
                            Expanded(
                              flex: 0,
                              child: ListView.builder(

                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,

                                itemCount: create_Icons.length,
                                itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Icon(create_Icons[index],color: Colors.black,),
                                  title: Text(headings[index]),

                                );
                              },),
                            )

                          ],

                        ),
                      ),
                    );
                  },);
            },
            icon: Icon(
              Icons.add_box,
              color: Colors.black,
              fill: 1,
            ),
          ),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  context: context, builder: (context) {
                  return Container(
                    height: height/1.8,
                    width: width,
                    child: SingleChildScrollView(

                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                                child: Container(
                                  height: 5,
                                  width: 50,


                                  decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.grey),
                                ),
                              ),
                            ],
                          ),

                          Expanded(
                            flex: 0,
                            child: ListView.builder(

                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,

                              itemCount: menu_icons.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      return pages[index];
                                    },));
                                  },
                                  child: ListTile(
                                    leading: Icon(menu_icons[index],color: Colors.black,size: 15,),
                                    title: Text(headings2[index],style: TextStyle(fontSize: 15),),

                                  ),
                                );
                              },),
                          )

                        ],

                      ),
                    ),
                  );
                },);
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17.0, right: 17, left: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                    ),
                  ),
                  TextButton(onPressed: (){}, child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("15",style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.bold,fontSize: 15),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Posts",style: TextStyle(color: Colors.black,fontSize: 12
                                  ),),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                  ),
                  TextButton(onPressed: (){}, child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1293",style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.bold,fontSize: 15),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("followers",style: TextStyle(color: Colors.black,fontSize: 12
                              ),),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                  ),
                  TextButton(onPressed: (){}, child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1611",style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.bold,fontSize: 15),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Following",style: TextStyle(color: Colors.black,fontSize: 12
                              ),),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                  ),

                ],
              ),
            ),
            Card(
                color: Colors.white38,
                elevation: 0,
                child: Column(children: [
                  ListTile(
                    title: Text(
                      "Adul",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                        "Flutter Developer\nTravel || Drawing || Photography"),
                    textColor: Colors.black,
                    // leading: IconButton(onPressed:(){}, icon:Icon(Icons.access_time),),
                    // iconColor: Colors.black,
                  )
                ])),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(

                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey[200])),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return EditProfilePage();
                      },));
                    },
                    child: Text(
                      "Edit profile",
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey[200])),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return ShareProfilePage();
                      },));
                    },
                    child: Text(
                      " Share profile",
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey[200])),

                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return ContactPage();
                      },));
                    },
                    child: Text(
                      " Contact",
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  width: width,
                  height: 120,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),

                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              customBorder: CircleBorder(eccentricity: 0),
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 5.0,right: 5,top: 5),
                                      child: CircleAvatar(
                                        radius: 41,
                                        backgroundColor: Colors.grey,
                                        child: CircleAvatar(
                                          radius: 38,
                                          backgroundImage: NetworkImage(
                                            // "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4="),
                                              images[index]),
                                        ),
                                      )),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text('person'),
                                      )
                                    ],
                                  )
                                ],

                              ),
                            ),
                          ],
                        );
                      }),

                ),


              ],
            ),
            // Container(
            //   height: 20,
            //   width: 400,
            //
            //
            // ),
            DefaultTabController(
                length: 2, // length of tabs
                // initialIndex: 0,
                child: SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor:Colors.black ,
                        tabs: [
                          Tab(icon:Icon(Icons.grid_on)),
                          Tab(icon: Icon(Icons.assignment_ind),),
                          // Tab(text: 'Tab 3'),
                          // Tab(text: 'Tab 4'),
                        ],
                      ),
                    ),
                    Container(



                         height: height*1.005, //height of TabBarView
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                        ),
                        child: TabBarView(children: <Widget>[
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: ListView.builder(
                                      itemCount: 5,
                                      shrinkWrap: true,
                                       physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index)
                                      {

                                        return Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              child:
                                              InkWell(
                                                onTap: (){
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                    return AccountImages();
                                                  },)
                                                  );
                                                },
                                                child: InkWell(
                                                  onTap: (){
                                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                      return AccountImages();
                                                    },)
                                                    );
                                                  },

                                                  child: InkWell(
                                                    onTap: (){
                                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                        return AccountImages();
                                                      },)
                                                      );
                                                    },
                                                    child: InkWell(
                                                      onTap: (){
                                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                          return AccountImages();
                                                        },)
                                                        );
                                                      },
                                                      child: Image.network(
                                                        "https://images.unsplash.com/photo-1677442992214-d5305c0bec2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                                                        fit: BoxFit.fill,),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              height: height * 0.2,
                                              width: width * 0.33,
                                              color: Colors.white,
                                            ),
                                            Container(
                                              child:
                                              InkWell(
                                                onTap: (){
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                    return AccountImages();
                                                  },)
                                                  );
                                                },
                                                child: Image.network(
                                                  "https://images.unsplash.com/photo-1677431568664-3522922ce759?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                                                  fit: BoxFit.fitHeight,),
                                              ),
                                              height: height * 0.2,
                                              width: width * 0.33,
                                              color: Colors.white,
                                            ),
                                            Container(
                                              child:
                                              InkWell(
                                                onTap: (){
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                    return AccountImages();
                                                  },)
                                                  );
                                                },
                                                child: Image.network(
                                                  "https://images.unsplash.com/photo-1677446412590-e8e4615b835f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                                                  fit: BoxFit.fitWidth,),
                                              ),
                                              height: height * 0.2,
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
                          Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Expanded(
                            flex: 0,
                            child: ListView.builder(
                                itemCount: 5,
                                shrinkWrap: true,
                                 physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index)
                                {

                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child:
                                        Image.network(
                                          "https://images.unsplash.com/photo-1677442992214-d5305c0bec2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                                          fit: BoxFit.fill,),
                                        height: height * 0.2,
                                        width: width * 0.33,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        child:
                                        Image.network(
                                          "https://images.unsplash.com/photo-1677431568664-3522922ce759?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                                          fit: BoxFit.fitHeight,),
                                        height: height * 0.2,
                                        width: width * 0.33,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        child:
                                        Image.network(
                                          "https://images.unsplash.com/photo-1677446412590-e8e4615b835f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                                          fit: BoxFit.fitWidth,),
                                        height: height * 0.2,
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

                          )
                        ])
                    )
                  ]),
                )
            ),


          ],
        ),
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
