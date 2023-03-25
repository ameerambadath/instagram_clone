import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
class ReelsDetailes extends StatelessWidget {
  const ReelsDetailes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.cyan,
      child: Column(
        children: [
          ListTile(
            horizontalTitleGap:12 ,
            minLeadingWidth: 0,
            dense: true,
            title: Text("athul___07",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
            leading: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1676914333302-53615f404416?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIyfHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: ExpandableText('🙌Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
              style: TextStyle(fontSize: 12.5,color: Colors.white,fontWeight: FontWeight.w400),
              expandText: "more",
            collapseText: "less",
            expandOnTextTap: true,
            maxLines: 2,
            linkColor: Colors.grey,),
          ),
          ListTile(
            horizontalTitleGap:5 ,
            minLeadingWidth: 0,
            dense: true,
            title: Text("music title-original music",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
            leading: Icon(Icons.graphic_eq_outlined,size: 16,color: Colors.white,)
          ),
        ],

      ),
    );
  }
}


