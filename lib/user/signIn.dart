import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myAppBar.dart';

class signIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return signInState();
  }
}
class signInState extends State<signIn>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Column(
        children: [
          myAppBar("Sign In"),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Container(
            height: MediaQuery.of(context).size.height*.07,
            width: MediaQuery.of(context).size.width*.7,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xff3a5a97)
            ),

            child: FlatButton(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Icon(FontAwesomeIcons.facebookF,color: Colors.white,size: 20,),
                 // SizedBox(width: MediaQuery.of(context).size.width*.05,),
                  Container(
                    height: MediaQuery.of(context).size.height*.05,
                    width: MediaQuery.of(context).size.width*.003,
                    color: Colors.white,
                  ),
                 // SizedBox(width: MediaQuery.of(context).size.width*.03,),
                  Text("Connect With Facebook",style: TextStyle(color: Colors.white,fontSize: 12),),

                ],
              ),
              onPressed: (){Navigator.pushNamed(context, '/signIn');},
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.02,),
          Container(
            height: MediaQuery.of(context).size.height*.07,
            width: MediaQuery.of(context).size.width*.7,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xff01a9f2)
            ),

            child: FlatButton(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.twitter,color: Colors.white,size: 20,),
                  // SizedBox(width: MediaQuery.of(context).size.width*.05,),
                  Container(
                    height: MediaQuery.of(context).size.height*.05,
                    width: MediaQuery.of(context).size.width*.003,
                    color: Colors.white,
                  ),
                  // SizedBox(width: MediaQuery.of(context).size.width*.03,),
                  Text("Connect With Twitter",style: TextStyle(color: Colors.white,fontSize: 12),),

                ],
              ),
              onPressed: (){Navigator.pushNamed(context, '/signIn');},
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.02,),
          Container(
            height: MediaQuery.of(context).size.height*.07,
            width: MediaQuery.of(context).size.width*.7,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffce4229)
            ),

            child: FlatButton(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.googlePlusG,color: Colors.white,size: 20,),
                  // SizedBox(width: MediaQuery.of(context).size.width*.05,),
                  Container(
                    height: MediaQuery.of(context).size.height*.05,
                    width: MediaQuery.of(context).size.width*.003,
                    color: Colors.white,
                  ),
                  // SizedBox(width: MediaQuery.of(context).size.width*.03,),
                  Text("Connect With Google",style: TextStyle(color: Colors.white,fontSize: 12),),

                ],
              ),
              onPressed: (){Navigator.pushNamed(context, '/signIn');},
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.03,),
          Text("Or",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height*.03,),
          GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height*.06,
              width: MediaQuery.of(context).size.width*.7,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(m.mainColor)
              ),

              child:Text("Create Account",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: "Poppins-Medium"),),

            ),
            onTap: (){Navigator.pushNamed(context, '/signUp');},
          ),
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      showUnselectedLabels: true,
      elevation: 20.5,
      unselectedItemColor: Colors.black26,
      iconSize: 35,
      selectedItemColor: Color(m.mainColor),
      items: [
        BottomNavigationBarItem(
            icon: IconButton(
              autofocus: false,
              color: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
              icon:   ImageIcon(AssetImage("images/setting.png"),size: 40,),
            ),
            title: Text(
              "",
              style: TextStyle(fontSize: 5),
            )),
        BottomNavigationBarItem(
            icon: IconButton(
              autofocus: false,
              color: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, '/homePage');
              },
              icon: ImageIcon(AssetImage("images/home.png"),size: 40,),
            ),
            title: Text(
              "",
              style: TextStyle(fontSize: 5),
            )),
        BottomNavigationBarItem(
            icon: IconButton(
              autofocus: false,
              color: Colors.black,
              onPressed: () {
                //Navigator.pushNamed(context, '/signIn');
              },
              icon: ImageIcon(AssetImage("images/user.png"),color:Color(m.mainColor),size: 40,),
            ),
            title: Text(
              "",
              style: TextStyle(fontSize: 5),
            )),
      ],
    ),
  );
  }

}