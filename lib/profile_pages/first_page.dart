// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice_demo/AccountPages/account.dart';
import 'package:practice_demo/Addpost_page/add_post.dart';
import 'package:practice_demo/profile_pages/comment_page.dart';
import 'package:practice_demo/profile_pages/message_page.dart';
import 'package:practice_demo/Reels_pages/reels.dart';
import 'package:practice_demo/Search_pages/search.dart';
import 'package:practice_demo/profile_pages/notifications.dart';
import 'package:practice_demo/profile_pages/status_view.dart';
import 'package:practice_demo/profile_pages/users_account.dart';
import '../main.dart';
var tap = false;
var click=false;

var size, height, width;
List icon_list = [
  Icons.share,
  Icons.link,
  Icons.bookmark,
  Icons.replay_circle_filled,
  Icons.qr_code_scanner
];
List icon_names = ["share", "link", "save", "Remix", "QR code"];

List images = [
  "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/916068700/photo/teenage-boy-relaxing-in-his-bedroom.jpg?b=1&s=170667a&w=0&k=20&c=ef1pl0z9kDXXCTIlJujVxWS5GCHevuJ8Fz92UIsfl9E=",
  "https://images.unsplash.com/photo-1677431532210-19204d5eee40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1452491335/photo/multicolored-lights-on-a-womans-face.jpg?b=1&s=170667a&w=0&k=20&c=2oI13b0AMa4vSpJXe_OqX23ZwbQLASAKUi77Yo95T1I=",
];
List images2 = [
  "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/916068700/photo/teenage-boy-relaxing-in-his-bedroom.jpg?b=1&s=170667a&w=0&k=20&c=ef1pl0z9kDXXCTIlJujVxWS5GCHevuJ8Fz92UIsfl9E=",
  "https://images.unsplash.com/photo-1677431532210-19204d5eee40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
];

Icon liked = Icon(Icons.favorite_border,color: Colors.black,);
Icon saved=Icon(Icons.bookmark_outline ,color: Colors.black,size: 20,);

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        // title: const Text("Instagram",
        //     style: TextStyle(
        //         color: Colors.black,
        //          fontStyle: FontStyle.italic,
        //         fontSize: 28,
        //         fontFamily: 'Billabong')),
        title: Image.asset('images/instagram_logo.png',
            fit: BoxFit.cover, height: 50),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Notification1();
                }));
              },
              icon: const Icon(Icons.favorite_outline,
                  fill: 0, weight: 300, grade: 0),
              color: Colors.black),
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Message();
                }));
              },
              icon: const Icon(FontAwesomeIcons.paperPlane, size: 20),
              color: Colors.black),
        ],

        // centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, left: 5, right: 5, bottom: 3),
                                child: CircleAvatar(
                                  radius: 34,
                                  backgroundImage: NetworkImage(
                                      "https://media.istockphoto.com/id/1452491335/photo/multicolored-lights-on-a-womans-face.jpg?b=1&s=170667a&w=0&k=20&c=2oI13b0AMa4vSpJXe_OqX23ZwbQLASAKUi77Yo95T1I="),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50, top: 30),
                                    // child: Icon(Icons.add_circle,color: Colors.blue,fill: 0),
                                    child: CircleAvatar(
                                      radius: 11,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Colors.blue,
                                        fill: 0,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 5, right: 5, bottom: 8),
                                child: Text('Your Story'),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 690,
                        height: 114,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: images.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return StatusView(name: "person $index",);
                                  }));
                                },
                                customBorder: CircleBorder(eccentricity: 0),
                                child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 38,
                                              backgroundColor:
                                                  Colors.pink.shade300,
                                              child: CircleAvatar(
                                                radius: 36,
                                                backgroundColor: Colors.white,
                                                child: CircleAvatar(
                                                  radius: 34,
                                                  backgroundImage: NetworkImage(
                                                      // "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4="),
                                                      images[index]),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0),
                                                  child: Text("person $index"),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              );
                            }),
                      ),

                      // CircleAvatar(radius:38)
                    ],
                  ),
                ),
              ),

              // Card(
              //   color: Colors.pink,
              // ),

              Expanded(
                flex: 0,
                child: ListView.builder(
                  itemCount: images2.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 0,
                      child: Column(
                        children: [
                          ListTile(
                            title: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return UserAccount();
                                }));
                              },
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return UserAccount();
                                  }));
                                },
                                child: Text(
                                  "ameer7____",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20))),
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: height * 0.48,
                                        width: width,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 100,
                                                width: width,
                                                child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  shrinkWrap: true,
                                                  // physics: NeverScrollableScrollPhysics(),
                                                  itemCount: icon_list.length,
                                                  itemBuilder: (context, index) {
                                                    return Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 10.0,
                                                                      left: 10,
                                                                      top: 10),
                                                              child: CircleAvatar(
                                                                radius: 28,
                                                                backgroundColor:
                                                                    Colors.black,
                                                                child:
                                                                    CircleAvatar(
                                                                  radius: 27,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  child:
                                                                      IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                        icon_list[
                                                                            index]),
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(icon_names[index])
                                                      ],
                                                    );
                                                  },
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: ListTile(
                                                  leading: Icon(
                                                    Icons.star_border,
                                                    color: Colors.black,
                                                  ),
                                                  title: Text('Add to favorites'),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: ListTile(
                                                  leading: Icon(
                                                    Icons.person,
                                                    color: Colors.black,
                                                  ),
                                                  title: Text('Unfollow'),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: ListTile(
                                                  leading: Icon(
                                                    Icons.info,
                                                    color: Colors.black,
                                                  ),
                                                  title: Text(
                                                      "Why you're seeing this post"),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: ListTile(
                                                  leading: Icon(
                                                    Icons.visibility_off,
                                                    color: Colors.black,
                                                  ),
                                                  title: Text('Hide'),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: ListTile(
                                                  leading: Icon(Icons.report,
                                                      color: Colors.red),
                                                  title: Text(
                                                    'report',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: Icon(Icons.more_vert)),
                            subtitle: Text("my own world"),
                            textColor: Colors.black,
                            leading: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return UserAccount();
                                }));
                              },
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                              ),
                            ),
                          ),
                          Container(
                            height: 300,
                            width: width,
                            color: Colors.white,
                            child: Image.network(images2[index]),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  StatefulBuilder(builder: (context,setState){
                                   return IconButton(
                                        onPressed: () {
                                          tap =!tap;
                                          setState(() {
                                            if(tap == true){
                                              liked = Icon(Icons.favorite,fill: 1,color: Colors.red,);

                                            }
                                            else{
                                              liked=Icon(Icons.favorite_outline,);
                                            }
                                          }
                                          );


                                        },

                                        icon: liked
                                    );
                                  }),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                          return CommentPage();
                                        },)
                                      );
                                    },
                                    icon: Icon(Icons.mode_comment_outlined,
                                        color: Colors.black),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      showBottomSheet(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                topLeft: Radius.circular(20))),
                                        context: context,
                                        builder: (context) {
                                          return SingleChildScrollView(
                                            child: Container(

                                              height: height /2,
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(10.0),
                                                          child: Container(
                                                            height: 30,
                                                            width: 30,
                                                            color: Colors.black,
                                                            child: Image(image:  NetworkImage("https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                                                              fit: BoxFit.cover,),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: width * 0.85,
                                                          height: height * 0.06,
                                                          child: TextField(
                                                            decoration:
                                                            InputDecoration(
                                                              border: InputBorder
                                                                  .none,
                                                              hintText:
                                                              'write something',
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [

                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              height: height*0.04,
                                                              width:width*0.9,
                                                              child: TextField(
                                                                // textAlign: TextAlign.start,
                                                                keyboardType: TextInputType.name,
                                                                // obscureText: true,
                                                                style: TextStyle(fontSize: 15),
                                                                decoration: InputDecoration(
                                                                  border:InputBorder.none,
                                                                    hintText: "Search",

                                                                     // contentPadding: EdgeInsets.only(top: 1),
                                                                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                                                                    suffixIcon: Icon(Icons.people,color: Colors.grey,),
                                                                    filled: true,

                                                                    ),
                                                              ),
                                                            ),

                                                          ],
                                                        ),
                                                        Card(
                                                          elevation: 0,

                                                          child: InkWell(
                                                            onTap: (){},
                                                            child: ListTile(


                                                              title: Text("Add post to your story"),
                                                              leading: CircleAvatar(
                                                                radius: 20,
                                                                backgroundColor: Colors.cyan,
                                                                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),

                                                              ),
                                                              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),

                                                            ),
                                                          ),


                                                        ),
                                                        Expanded(
                                                          flex: 0,
                                                          child: ListView.builder(
                                                              physics: NeverScrollableScrollPhysics(),
                                                            shrinkWrap: true,
                                                            itemCount: 10,
                                                              itemBuilder: (context, index) {
                                                                return Card(
                                                                  elevation: 0,

                                                                  child: InkWell(
                                                                    onTap: (){},
                                                                    child: ListTile(


                                                                      title: Text("person"),
                                                                      leading: CircleAvatar(
                                                                        radius: 20,
                                                                        backgroundColor: Colors.cyan,
                                                                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1677431532210-19204d5eee40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60"),

                                                                      ),
                                                                       trailing: Container(

                                                                         height: 20,
                                                                         width: 40,

                                                                         child: Padding(
                                                                           padding: const EdgeInsets.only(left: 3.0),
                                                                           child: Text("send"),
                                                                         ),
                                                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue),

                                                                       ),

                                                                    ),
                                                                  ),


                                                                );

                                                              },),
                                                        )



                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: Icon(FontAwesomeIcons.paperPlane,
                                        size: 20),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      click=!click;
                                      setState(() {
                                        if(click==true){
                                          saved=Icon(Icons.bookmark,fill: 1,color: Colors.black,);
                                        }
                                        else{
                                          saved=Icon(Icons.bookmark_outline);
                                        }
                                      });
                                    },
                                    icon: saved
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(children: [
                              Text(
                                  "904 likes\nameer7___👍🙌try again and again!!"),
                            ]),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // ListView.builder(
              //     itemBuilder: itemBuilder)
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   child: Container(
      //     height: height*0.065,
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
      //           },
      //           icon: Icon(
      //             Icons.add_box,
      //             color: Colors.black,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {
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
