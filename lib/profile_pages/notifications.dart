import 'package:flutter/material.dart';
import 'package:practice_demo/profile_pages/first_page.dart';
import 'package:practice_demo/Reels_pages/reels.dart';
import 'package:practice_demo/Search_pages/search.dart';

import '../AccountPages/account.dart';
import '../Addpost_page/add_post.dart';
var size,width,height;
List Filters=["Tag & mentions","Comments","Follow"];

class Notification1 extends StatefulWidget {
   Notification1({Key? key}) : super(key: key);


  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  bool? isChecked=false;
  bool? isChecked3=false;
  bool? isChecked4=false;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Notifications",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
         Navigator.of(context).pop();

        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          TextButton(onPressed: (){
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight: Radius.circular(20))
              ),
              context: context, builder: (context) {
              return StatefulBuilder(builder: (context,setState){
                return SingleChildScrollView(
                  child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                height: 6,
                                width: 40,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                                // color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Row(


                                      children: [
                                        Text("Filter",style: TextStyle(fontWeight: FontWeight.bold,fontSize:22,color: Colors.white),),
                                      ]
                                  ),
                                  Row(


                                      children: [
                                        Text("Filter",style: TextStyle(fontWeight: FontWeight.bold,fontSize:24,color: Colors.black),),
                                      ]
                                  ),
                                  Row(

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 12.0),
                                        child: isChecked==true?Text("Clear", style: TextStyle(fontSize:22,color: Colors.black),):
                                        Text("Clear", style: TextStyle(fontSize:22,color: Colors.grey),),
                                      ),

                                    ],
                                  )


                                ]
                            )
                        ),
                        Divider(),
                        SizedBox(
                          height: 15,
                          width: width,

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Categories",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                          width: width,
                        ),
                        Expanded(
                           flex: 0,
                          child: ListView.builder(
                             shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(Filters[index],style: TextStyle(fontSize: 22)),
                                ),
                                Checkbox(

                                    shape:CircleBorder(),
                                    value: isChecked,
                                    onChanged: (newBool){
                                      setState(() {
                                        isChecked=newBool;
                                      });
                                    })
                              ],
                            );
                          },),
                        ),
                        Divider(),
                        SizedBox(
                          height: 15,
                          width: width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Account Types",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                          width: width,
                        ),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Verified",style: TextStyle(fontSize: 22)),
                  ),
                  Checkbox(

                  shape:CircleBorder(),
                  value: isChecked3,
                  onChanged: (newBool){
                  setState(() {
                  isChecked3=newBool;
                  });
                  })
                  ],
                  ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("People you follow",style: TextStyle(fontSize: 22)),
                            ),
                            Checkbox(

                                shape:CircleBorder(),
                                value: isChecked4,
                                onChanged: (newBool){
                                  setState(() {
                                    isChecked4=newBool;
                                  });
                                })
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height*0.06,
                            width: width,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
                            child: Center(child: Text("Apply",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                          ),
                        )



                      ]
                  ),
                );
              });
            },
            );
          }, child: Text("Filter",style: TextStyle(fontSize: 18),))

        ],
      ),
      body:

        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),

                    elevation: 0,
                    color: Colors.white,
                    child: ListTile(

                      title: Text("You're all caught up",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                      subtitle: Text("See new activity for amiz_box",style: TextStyle(color: Colors.blue),),
                      textColor: Colors.red,
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.done,color: Colors.pink),

                          ),
                        ),

                        // child: Icon(Icons.done),

                      ),
                    )
      ),Row(

                children: [
                  Text("   Today",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                ],
              ),


              Card(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),

                  elevation: 0,
                  color: Colors.white,
                  child: ListTile(

                    title: Text("l_i_n_s_h_a_l_i_n_u menthoned you in a comment:",style: TextStyle(color: Colors.black,),),
                    subtitle: Text("@adul_07 ",style: TextStyle(color: Colors.blue),),

                    leading: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.pink,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 28,
                          // backgroundColor: Colors.white,
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),


                        ),
                      ),

                      // child: Icon(Icons.done),

                    ),
                    trailing: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=',),
                          fit: BoxFit.cover)),

                    ),
                  ),

              ),
              Row(

                children: [
                  Text("   Yesterday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                ],
              ),
              Expanded(
                flex: 0,
                child: ListView.builder(
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                  return  Card(
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),

                    elevation: 0,
                    color: Colors.white,
                    child: ListTile(

                      title: Text("l_i_n_s_h_a_l_i_n_u menthoned you in a comment:",style: TextStyle(color: Colors.black),),
                      subtitle: Text("@adul_07 ",style: TextStyle(color: Colors.blue),),

                      leading: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            radius: 28,
                            // backgroundColor: Colors.white,
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),


                          ),
                        ),

                        // child: Icon(Icons.done),

                      ),
                      trailing: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=',),
                            fit: BoxFit.cover)),

                      ),
                    ),

                  );
                },),
              )
            ],
          ),
        ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   child: Container(
      //     height: height*0.06,
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
