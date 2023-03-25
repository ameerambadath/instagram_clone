import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';

class SettingsPage extends StatelessWidget {
   SettingsPage({Key? key}) : super(key: key);
  List field_titles=["Follow and invites friends","Notification","Privacy","Supervision","Security","Ads","Account","Help","About"];
  List field_icons=[Icons.person_add,Icons.notifications,Icons.lock,Icons.group,Icons.verified_user,Icons.campaign,Icons.account_circle,Icons.support,Icons.error];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Settings",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height*0.15,
                width:width ,
                child: Card(
                  child: ListTile(

                    title: Text("some account setting are moving",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                    subtitle: Text("Soon, Account centre will be the primary place to\n"
                        " manage you account info ,settings and\n"
                        " experience across meta technologies sch as\n"
                        " facebook an instagram.",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8,top: 8),
                child: TextField(

                  decoration: InputDecoration(border: OutlineInputBorder( borderRadius: BorderRadius.circular(10)),focusedBorder:OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),fillColor: Colors.grey,),


                ),
              ),
              Container(
                height: height*0.65,
                width:width,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: field_icons.length,
                  itemBuilder:  (context, index) {
                  return InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text(field_titles[index]),
                      leading: Icon(field_icons[index]),
                      trailing: Icon(Icons.arrow_forward,color: Colors.black,),
                    ),
                  );
                },
                ),
              ),
             Divider(),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(Icons.all_inclusive),
                         Text(" Meta",style: TextStyle(fontSize: 20),)
                       ],
                     ),
                   ),


                 ],
                   
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Account center",style: TextStyle(color: Colors.blue,fontSize: 16),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Controll setting for connected experiences across \nInstagram the facebook app and messenger ,including \nstory and post sharing and logging in.",style: TextStyle(color: Colors.grey[800]),),
                 ),
                 Divider(),
                 ListTile(
                   title:Text("Logins",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 ),
                 ListTile(title: Text("Add account",style: TextStyle(color: Colors.blue),),),
                 ListTile(title: Text("Log Out",style: TextStyle(color: Colors.blue),),),
                 Divider(),
                 SizedBox(
                   height: 50,

                 )

               ],
             )

            ],
          ),
        ),
      ),
    );
  }
}
