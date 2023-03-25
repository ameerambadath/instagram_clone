
import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';

class ReelsSideBar extends StatelessWidget {
  const ReelsSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: height*0.65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline),iconSize: 20,color: Colors.white,),
              Text("1.34k",style: TextStyle(color: Colors.white),),
              SizedBox(
                height: 10,
              ),
              IconButton(onPressed: (){}, icon:Icon( Icons.message_outlined),iconSize: 20,color: Colors.white,),
              Text("2,887",style: TextStyle(color: Colors.white),),

              IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined),iconSize: 20,color: Colors.white,),

              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),iconSize: 20,color: Colors.white,),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1575842763096-d9dfa88e7f1e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHJlZWxzJTIwZnJvbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
                  fit:BoxFit.cover ),

                ),

              ),
              SizedBox(
                height: 10,
              )
            ],


          ),
        ),
      ],
    );
  }
}
