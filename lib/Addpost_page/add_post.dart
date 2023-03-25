import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';
List images_add=["https://images.unsplash.com/photo-1638272750685-81820148329b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
"https://images.unsplash.com/photo-1677847333791-5091e77c2954?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
"https://images.unsplash.com/photo-1678031526949-831ad7ab7105?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
"https://images.unsplash.com/photo-1678026777069-138834373d59?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
"https://plus.unsplash.com/premium_photo-1666318300303-fa93066b7f88?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60"];

var size, height, width;

class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ))
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close,
              color: Colors.black,
            )),
        title: Text(
          "New post",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1676914333302-53615f404416?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIyfHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                      fit: BoxFit.cover)),
              height: height * 0.55,
              width: width,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: CircleAvatar(
                      // radius: 14,

                      backgroundColor: Colors.grey,

                      child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.open_in_full))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: width,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Gallery  v",
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.library_add,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 2.0, right: 4),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.12,
                              width: width / 4.06,
                              // color: Colors.red,
                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(images_add[0]),fit: BoxFit.cover)),
                            ),
                            Container(
                              height: height * 0.12,
                              width: width / 4.06,
                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(images_add[1]),fit: BoxFit.cover)),
                            ),
                            Container(
                              height: height * 0.12,
                              width: width / 4.06,
                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(images_add[2]),fit: BoxFit.cover)),
                            ),
                            Container(
                              height: height * 0.12,
                              width: width / 4.06,
                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(images_add[3]),fit: BoxFit.cover)),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
