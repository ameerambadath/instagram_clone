import 'package:flutter/material.dart';
 String text_string="";
final  _textEditingController=TextEditingController();

class TaskPage extends StatefulWidget {
   TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold (
      body: StreamBuilder(builder: (context, setState) {
        return Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(text_string,style: TextStyle(fontSize: 30),),
                Divider(),
                Spacer(),
                Task2(),
              ],
            ),
          ),
        );
      },),
    );

  }
}
class Task2 extends StatefulWidget {

   Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {


  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        height: 200,
        child: Column(
          children: [
            TextField(
                // decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))) ,
                controller: _textEditingController,

                onChanged: (value) {
                  text_string = value;
                }
            ),
            TextButton(onPressed: (){
              setState(() {
                _textEditingController.text=text_string;
              });
            }, child: Text("ok",style: TextStyle(fontSize: 25),))
          ],
        ),

      );
    },);

  }
}

