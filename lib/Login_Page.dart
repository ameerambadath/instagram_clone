import 'package:flutter/material.dart';
import 'package:practice_demo/AccountPages/account.dart';
import 'package:practice_demo/SignUpPage.dart';
import 'package:practice_demo/nav_bar.dart';
var size,width,height;
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height*0.9,
                  width: width,
                  child: Column(

                    children: [
                      SizedBox(
                        height: height*0.2,
                        width: width,
                      ),
                      Container(
                        height: height*0.1,
                        width: width/2,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/instagram_logo.png'))),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(hintText: "phone number,username or email",
                              hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.grey[200],border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
                        child: TextField(

                          obscureText: true,
                          decoration: InputDecoration(hintText: "Password",suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.grey[200],border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                        ),
                      ),
                      ),
                      ListTile(
                        trailing: TextButton(onPressed: (){}, child: Text("ForgetPassword?",style: TextStyle(color: Colors.blue),)),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                            return Navbar();
                          },));
                        },
                        child: Container(
                          height: height*0.06,
                          width: width*0.9,
                          color: Colors.blue,
                          child: Center(
                            child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 18),),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: width,

                      ),
                      Divider(color: Colors.grey,),

                     Container(
                       height: 100,
                       width: width,
                       color: Colors.white,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                             height: 20,
                             width: 20,
                             decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/FacebookLogo.png"))),
                           ),
                           Text(" Continue as Dave johnson",style: TextStyle(color: Colors.blue),)
                         ],
                       ),
                     ),


                    ],
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                       return TaskPage();
                     },));
                    }, child: Text("Sign Up",style: TextStyle(color: Colors.blue),))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
