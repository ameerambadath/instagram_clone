import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.done,
                color: Colors.blue,
              ))
        ],
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
              width: width,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Change profile photo",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Name", hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username", hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Bio",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Add link",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Switch to proffessional account",
                      style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child:
                      Text("Create avatar", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Personal information settings",
                      style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
