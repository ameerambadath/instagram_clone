// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../main.dart';
List images = [

  "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/916068700/photo/teenage-boy-relaxing-in-his-bedroom.jpg?b=1&s=170667a&w=0&k=20&c=ef1pl0z9kDXXCTIlJujVxWS5GCHevuJ8Fz92UIsfl9E=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://media.istockphoto.com/id/1452491335/photo/multicolored-lights-on-a-womans-face.jpg?b=1&s=170667a&w=0&k=20&c=2oI13b0AMa4vSpJXe_OqX23ZwbQLASAKUi77Yo95T1I=",

];
class Appbar1 extends StatelessWidget {
  const Appbar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Instagram",
            style: TextStyle(
                color: Colors.black,
                // fontStyle: FontStyle.italic,
                fontSize: 28,
                fontFamily: 'Billabong')),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline,
                  fill: 0, weight: 300, grade: 0),
              color: Colors.black),
          IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.paperPlane,size: 20),
              color: Colors.black),
        ],

        // centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          // child: SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
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
                        CircleAvatar(
                          radius: 38,
                          backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/id/1452491335/photo/multicolored-lights-on-a-womans-face.jpg?b=1&s=170667a&w=0&k=20&c=2oI13b0AMa4vSpJXe_OqX23ZwbQLASAKUi77Yo95T1I="),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50, top: 30),
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
                        Container(
                          width: 800,
                          height: 100,

                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: images.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  customBorder: CircleBorder(eccentricity: 0),
                                  child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: CircleAvatar(
                                        radius: 41,
                                        backgroundColor: Colors.pink,
                                        child: CircleAvatar(
                                          radius: 38,
                                          backgroundImage: NetworkImage(
                                            // "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4="),
                                              images[index]),
                                        ),
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

                Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "jackson___",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_vert)),
                        subtitle: Text("Sponsored"),
                        textColor: Colors.black,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 500,
                        color: Colors.white,
                        child: Image.network(
                            "https://media.istockphoto.com/id/916068700/photo/teenage-boy-relaxing-in-his-bedroom.jpg?b=1&s=170667a&w=0&k=20&c=ef1pl0z9kDXXCTIlJujVxWS5GCHevuJ8Fz92UIsfl9E="),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mode_comment_outlined,
                                color: Colors.black),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.paperPlane,size: 20),
                          ),
                        ],
                      ),
                      Row(children: [
                        Text(
                            "303,904 likes\njackson____tag someone you most loved !!"),
                      ])
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "athul___ar",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_vert)),
                        subtitle: Text("malappuram"),
                        textColor: Colors.black,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1589885429111-a06fa82b8455?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fElOU1RBR1JBTSUyMFBIT1RPU3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
                        ),

                      ),
                      Container(
                        height: 300,
                        width: 500,
                        color: Colors.white,
                        child: Image.network(
                            "https://images.unsplash.com/photo-1512793988391-0716d78a18ac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fElOU1RBR1JBTSUyMFBIT1RPU3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mode_comment_outlined,
                                color: Colors.black),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.paperPlane,size: 20),
                          ),
                        ],
                      ),
                      Row(children: [
                        Text(
                            "9204 likes\nathul_ar tag someone you most loved !!"),
                      ])
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "shafeel_07",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_vert)),
                        subtitle: Text("india"),
                        textColor: Colors.black,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 500,
                        color: Colors.white,
                        child: Image.network(
                            "https://images.unsplash.com/photo-1589885429111-a06fa82b8455?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fElOU1RBR1JBTSUyMFBIT1RPU3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mode_comment_outlined,
                                color: Colors.black),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.paperPlane,size: 20),
                          ),
                        ],
                      ),
                      Row(children: [
                        Text(
                            "303,904 likes\njackson____tag someone you most loved !!"),
                      ])
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "ameer7____",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_vert)),
                        subtitle: Text("my own world"),
                        textColor: Colors.black,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 500,
                        color: Colors.white,
                        child: Image.network(
                            "https://images.unsplash.com/photo-1587837073080-448bc6a2329b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fElOU1RBR1JBTSUyMFBIT1RPU3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mode_comment_outlined,
                                color: Colors.black),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.paperPlane,size: 20),
                          ),
                        ],
                      ),
                      Row(children: [
                        Text("904 likes\nameer7___try again and again!!"),
                      ])
                    ],
                  ),
                )
              ],
            ),
          ),
          // ),
        ),
      ),
      bottomNavigationBar:

      BottomAppBar(

        color: Colors.white,
        child: Container(
          height: 70,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_box,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.slideshow,
                  color: Colors.black,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

