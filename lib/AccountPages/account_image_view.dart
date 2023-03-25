import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';
List names5=["boult__","raam__","batish"];
List images6=["https://images.unsplash.com/photo-1677442992214-d5305c0bec2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1677431568664-3522922ce759?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1677446412590-e8e4615b835f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60"];

class AccountImages extends StatelessWidget {
  const AccountImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text("Posts",style: TextStyle(color: Colors.black),),

        ),
        body:ListView.builder(
          itemCount: names5.length,
          itemBuilder: (context, index) {
            return  Column(
              children: [

                Row(
                  children: [
                    Container(
                      height: height/10,
                      width: width,
                      child: ListTile(
                        title: Text("Adul__7"),
                        subtitle: Text("my own world"),
                        leading: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.red,
                          backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1661763922970-e0f46e28ca9e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60"),
                        ),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                      ),
                    )],
                ),
                Container(
                  height: height*0.65,
                  width:width,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(images6[index]))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_outline)),

                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("1899 likes\nboult___🙌hello"),
                    )
                  ],
                )
              ],
            );
          },
        )

    );


  }
}
