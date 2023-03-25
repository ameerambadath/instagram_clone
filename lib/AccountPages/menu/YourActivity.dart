import 'package:flutter/material.dart';
class YourActivity extends StatelessWidget {
   YourActivity({Key? key}) : super(key: key);
var size,height,width;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
       elevation: 1,
       iconTheme: IconThemeData(color: Colors.black),
       backgroundColor: Colors.white,
       title: Text("Your Activity",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),),

     ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
              width: width,
            ),
            Text("One place to manage your",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            Text("activity",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
              width: width,
            ),
            Text("We've added more tools for you to review and ",style: TextStyle(fontSize: 18,color: Colors.grey),),
            Text("manage your photos,videos account and activity",style: TextStyle(fontSize: 18,color: Colors.grey),),
            Text("on Instagram",style: TextStyle(fontSize: 18,color: Colors.grey),),
            SizedBox(
              height:30,
              width: width,
            ),
            Divider(),
            Expanded(
              flex: 0,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 9,
                itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                      child: ListTile(
                        title: Text("Time Spent",style: TextStyle(fontSize: 20),),
                        leading: Icon(Icons.schedule),
                        subtitle: Text("see how much time you usually spent on\nInstagram each day",style: TextStyle(fontSize: 18),),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),

                      ),
                    ),
                    Divider(),
                  ],

                );
              },),
            ),

          ],
        ),
      ),
    );
  }
}
