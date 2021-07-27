import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Rigster());
}
class Rigster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "rigester",
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool PasswordVisible =true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register",style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
      body: ListView(
        children: [
          SizedBox(height: size.width*0.1,),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
               radius: size.width *0.14,
                backgroundColor: Colors.grey[400],
                child: Icon(
              FontAwesomeIcons.user,color: Colors.white,size: size.width *0.1,
                ),
              ),

                Positioned(
                  top: size.height * 0.10,
                  left: size.width * 0.56,
                    child: Container(
                      height: size.width * 0.1,
                      width: size.width * 0.1,
                      decoration: BoxDecoration(
                       color: Colors.blue,
                        shape: BoxShape.circle,
                       border: Border.all(color: Colors.white,width: 2),
                        ),
                       child: Icon(FontAwesomeIcons.arrowUp,color: Colors.white,),
                     ),
                 ),
            ],
          ),
          SizedBox(height: size.width*0.1,),
        Column(
          children: [
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                         width: 150.0,
                         margin: EdgeInsets.all(10.0),
                         child: TextField(
                               decoration: InputDecoration(
                                 border: OutlineInputBorder(),
                                 hintText: 'Fristname',
                                 hintTextDirection: TextDirection.rtl,
                                 icon: Icon(FontAwesomeIcons.user),
                               ),
                               keyboardType: TextInputType.multiline,
                               textDirection: TextDirection.rtl,
                               maxLength: null,),
                       ),
                       Container(
                         width: 150.0,
                         margin: EdgeInsets.all(10.0),
                         child: TextField(
                           decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'Lastname',
                             hintTextDirection: TextDirection.rtl,
                             icon: Icon(FontAwesomeIcons.user),
                           ),
                           keyboardType: TextInputType.multiline,
                           textDirection: TextDirection.rtl,
                           maxLength: null,),
                       ),
                     ],
                   ),
                 ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  hintTextDirection: TextDirection.rtl,
                  icon: Icon(FontAwesomeIcons.envelope),
                ),
                keyboardType: TextInputType.emailAddress,
                textDirection: TextDirection.rtl,
                maxLength: null,),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'phone1',
                  hintTextDirection: TextDirection.rtl,
                  icon: Icon(FontAwesomeIcons.phone),
                ),
                keyboardType: TextInputType.number,
                textDirection: TextDirection.rtl,
                maxLength: null,),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'phone2',
                  hintTextDirection: TextDirection.rtl,
                  icon: Icon(FontAwesomeIcons.phone),
                ),
                keyboardType: TextInputType.number,
                textDirection: TextDirection.rtl,
                maxLength: null,),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  hintTextDirection: TextDirection.rtl,
                  icon: IconButton(
                    icon: Icon(
                      PasswordVisible
                          ? FontAwesomeIcons.lock
                          : FontAwesomeIcons.unlock,
                    ),
                    onPressed: () {
                      setState(() {
                        PasswordVisible = !PasswordVisible;
                      });
                    },
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                textDirection: TextDirection.rtl,
                maxLength: null,),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ConfirmPassword',
                  hintTextDirection: TextDirection.rtl,
                    icon: IconButton(
                      icon: Icon(
                        PasswordVisible
                            ? FontAwesomeIcons.lock
                            : FontAwesomeIcons.unlock,
                      ),
                      onPressed: () {
                        setState(() {
                          PasswordVisible = !PasswordVisible;
                        });
                      },
                    ),
                ),
                keyboardType: TextInputType.visiblePassword,
                textDirection: TextDirection.rtl,
                maxLength: null,),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Center(
                child: SizedBox(
                  width: 350.0,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        side: BorderSide(width: 1.0)),
                    onPressed: () {  },
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 40.0),
                    ),
            ),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text("Already have an account?",style: TextStyle(fontSize: 20.0),)),
              Container(
                  child: FlatButton(onPressed: (){}, child: Text("Log in")))
            ],
              ),
        ],
      ),
    ],
    ),
    );
  }
}
