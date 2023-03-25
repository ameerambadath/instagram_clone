import 'dart:ffi';

import 'package:flutter/material.dart';

List images = [
  "https://media.istockphoto.com/id/1452491335/photo/multicolored-lights-on-a-womans-face.jpg?b=1&s=170667a&w=0&k=20&c=2oI13b0AMa4vSpJXe_OqX23ZwbQLASAKUi77Yo95T1I=",
  "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4=",
  "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlvdXRoJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/916068700/photo/teenage-boy-relaxing-in-his-bedroom.jpg?b=1&s=170667a&w=0&k=20&c=ef1pl0z9kDXXCTIlJujVxWS5GCHevuJ8Fz92UIsfl9E="
];

class Dummyy extends StatelessWidget {
  const Dummyy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child:
      Container(
        height: 100,
        width: double.infinity,
        child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                customBorder: CircleBorder(eccentricity: 0),
                child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 41,
                      backgroundColor: Colors.pink,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: NetworkImage(
                            // "https://media.istockphoto.com/id/1144287292/photo/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses.jpg?b=1&s=170667a&w=0&k=20&c=JosednIBilI8XY47p_R75vNPRPVNm7ky4JB1DhJCoS4="),
                            images[index]),
                      ),
                    )),
              );
            }),

      ),
    ));
  }
}
