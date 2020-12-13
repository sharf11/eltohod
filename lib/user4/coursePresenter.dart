

import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class coursePresnter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return coursePresnterState();
  }
}
class coursePresnterState extends State<coursePresnter>{
  myApp m=new myApp();
  int counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefefe),
      body: Container(
        child: Column(
        children: [
        myAppBar("Course Presenter"),
          SizedBox( height: MediaQuery.of(context).size.height*.06,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height*.09,
                  width: MediaQuery.of(context).size.width*.42,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*.01),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(m.mainColor),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        spreadRadius: 4,
                        blurRadius: 9,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child: Text("Individual",style: TextStyle(color: Colors.white,fontSize: 14.5,fontWeight: FontWeight.bold),),

                  ),
                onTap:(){Navigator.pushNamed(context, '/individualSignUp');},
              ),

              GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height*.09,
                  width: MediaQuery.of(context).size.width*.42,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.01),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child:Text("Course Center",style: TextStyle(color: Colors.black,fontSize: 14.5,fontWeight: FontWeight.bold),),


                ),
                onTap:(){Navigator.pushNamed(context, '/centerSignUp');},
              ),
            ],
          ),
          SizedBox( height: MediaQuery.of(context).size.height*.2,),
          GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height*.05,
              width: MediaQuery.of(context).size.width*.45,
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*.01),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(m.mainColor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    spreadRadius: 4,
                    blurRadius: 9,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),

              child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),

            ),
            onTap:(){Navigator.pushNamed(context, '/404');},
          ),

        ],
      ),),
      bottomNavigationBar:  BottomNavigationBar(
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
                  Navigator.pushNamed(context, '/user4Main');
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
                  Navigator.pushNamed(context, '/user4Profile');
                },
                icon: ImageIcon(AssetImage("images/user.png"),size: 40,),
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