import 'package:flutter/material.dart';
import 'package:practice_demo/profile_pages/first_page.dart';
List images = [
  "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/916068700/photo/teenage-boy-relaxing-in-his-bedroom.jpg?b=1&s=170667a&w=0&k=20&c=ef1pl0z9kDXXCTIlJujVxWS5GCHevuJ8Fz92UIsfl9E=",
  "https://images.unsplash.com/photo-1677431532210-19204d5eee40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",

];

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading:false,
        backgroundColor: Colors.white,
         title: TextButton(onPressed: (){}, child: Text("adul___07 ",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,),)),
        actions: [
           // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black)),
          // TextButton(onPressed: (){}, child: Text("adul___07",style: TextStyle(color: Colors.white),)),
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call,color: Colors.black,size: 35,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.black,size: 35,)),

        ],
         leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
         }, icon: Icon(Icons.arrow_back,color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onTap: () {

                },
                keyboardType: TextInputType.name,
                // obscureText: true,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Search",
                    contentPadding: EdgeInsets.all(8),
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade50),
                    )),
              ),


            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 130,
                        width: 850,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: images.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {

                                },
                                customBorder: CircleBorder(eccentricity: 0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                              // "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4="),
                                                images[index]),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 50,bottom: 70),
                                              child: ElevatedButton(onPressed:(){}, child: Text("hi😍",style: TextStyle(color: Colors.black,fontSize: 9)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),)
                                            ),
                                          ),


                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:8.0),
                                            child: Text('data'),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),



                      ),

                    ],
                  ),
                ],

              ),
            ),
            // Container(
            //
            //   child: SingleChildScrollView(
            //     scrollDirection:  Axis.horizontal,
            //     child: Row(
            //       children: [
            //         Text("     Leave a note                            vipin __                            vis_hnu                            dremer                                 jack                        felin  ",style: TextStyle(fontWeight: FontWeight.bold),)
            //       ],
            //     ),
            //   ),
            //
            // ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    TextButton(onPressed:(){}, child: Text("Messages",style: TextStyle(color: Colors.black,fontSize: 20),)),
                    TextButton(onPressed: (){}, child: Text("Request",style: TextStyle(color: Colors.blue,fontSize: 20),))
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: 10,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return  Card(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),

                  elevation: 0,
                  color: Colors.white,
                  child: ListTile(


                    title: Text("l_i_n_s_h_a_l_i_n_u ",style: TextStyle(color: Colors.black,fontSize: 18),),
                    subtitle: Text("2 new messages  5m ",style: TextStyle(color: Colors.black),),

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

                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera,fill: 0,)),

                  ),

                );
              },),
          ],
        ),
      ),
    );
  }
}
