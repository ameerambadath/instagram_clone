import 'package:flutter/material.dart';
var size,height,width;
class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text("Comments",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(

         scrollDirection: Axis.horizontal,
        child: Container(
          height: height,
          width: width,
          child: ListView.builder(

            itemCount: 30,
            itemBuilder: (context, index) {
            return Container(
              height: height/12,
              width: width,
              child: ListTile(

                title: Text("username__ 2h"),

                subtitle: Text("awsome😍😍😍\nReply"),

                leading: CircleAvatar(
                  radius: 12,
                  // backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1678026777069-138834373d59?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60"),

                ),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,),iconSize: 15,),
              ),
            );
          },
          ),
        ),
      ),
    );
  }
}
