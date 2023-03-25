import 'package:flutter/material.dart';
class ContactPage extends StatefulWidget {
   ContactPage({Key? key}) : super(key: key);
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String mystring="";
  final  _textEditingController=TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       title: Text("ALERT BOX"),
       actions: [
         IconButton(onPressed: (){
           showDialog(context: context,
             builder: (context) =>StatefulBuilder(builder: (context, setState) {
               return AlertDialog(
                 title: Text("MY ALERT BOX"),
                 content: Text(mystring),
                 actions: [
                   TextField(
                     controller: _textEditingController,
                       onChanged: (value) {
                         mystring = value;
                       }

                   ),
                   TextButton(onPressed: (){
                     setState(() {
                       _textEditingController.text=mystring;
                     });


                   }, child: Text("OK"))
                 ],

               );
             },));
         }, icon: Icon(Icons.alarm))
       ],
     ),
    );
  }
}
