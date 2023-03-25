import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';
import 'package:practice_demo/profile_pages/first_page.dart';

var height, width, size;

class StatusView extends StatefulWidget {
  final String name;
  StatusView({Key? key, required this.name}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            // color: Colors.red,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1510022079733-8b58aca7c4a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhdGhlciUyMGFuZCUyMHNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
            fit: BoxFit.cover),borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: width,
                  child: ListTile(
                    title: Text(
                      widget.name,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4="),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width*0.75,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            // obscureText: true,
                            decoration: InputDecoration(
                              // border: InputBorder.none,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ,
                              hintText: "Send message",
                              hintStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(15),
                              // prefixIcon: Icon(Icons.search, color: Colors.grey),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.white,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined,color: Colors.white,)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
