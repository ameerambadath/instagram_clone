import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';
List names5=["boult__","raam__","batish"];
List images6=["https://images.unsplash.com/photo-1677442992214-d5305c0bec2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1678135171573-a76ebf2eae56?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
"https://images.unsplash.com/photo-1609070906793-e74997943098?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60"];

class SearchImagePage extends StatelessWidget {
  const SearchImagePage({Key? key}) : super(key: key);

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
        title: Text("Explore",style: TextStyle(color: Colors.black),),

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
                    title: Text(names5[index]),
                    subtitle: Text("my own world"),
                    leading: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1661763922970-e0f46e28ca9e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60"),
                    ),
                    trailing: SizedBox(
                      width: 110,
                      child: Row(
                        children: [
                          Container(
                            // decoration: BoxDecoration(shape: ),
                            // height: 20,
                            // width: 60,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey.shade200,

                            ) ,

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Follow",style: TextStyle(fontSize: 10),),
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                    ),
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
