import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';
class ShareProfilePage extends StatelessWidget {
  const ShareProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code))
        ],
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.close,size: 30,)),
        title: Container(
        height: 30,
          width: 80,
          child: Center(child: Text("COLOUR",style: TextStyle(fontSize: 16),)),
          decoration: BoxDecoration(color: Colors.transparent ,borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.white)),
        ),
        centerTitle: true,
          ),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.orange,Colors.red])),
        child: Column(
          children: [
            SizedBox(
              height: 200,


            ),
            Container(
              height: 400,
              width: 380,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white,image: DecorationImage(image: NetworkImage("https://bloximages.newyork1.vip.townnews.com/manoanow.org/content/tncms/assets/v3/editorial/3/f1/3f187e26-1311-11ed-93bb-7735f09db1d1/62ea4454332f7.image.png?resize=435%2C500",),)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(

              children: [
                SizedBox(
                  width: 40,
                ),
                Container(

                  height: 100,
                  width: 183,
                  decoration: BoxDecoration(color:Colors.white,borderRadius:  BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.ios_share,size: 30,),
                     Text("Share profile",style: TextStyle(fontSize: 18),)
                   ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                Container(
                  height: 100,
                  width: 183,
                  // color: Colors.blue,
                  decoration: BoxDecoration(color:Colors.white,borderRadius:  BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.link,size: 30,),
                      Text("Copy link",style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
