

import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class medicalRecord extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return medicalRecordState();
  }
}
class medicalRecordState extends State<medicalRecord>{
  myApp m=new myApp();
  int counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
        children: [
          myAppBar("Medical Record"),
          SizedBox(  height: MediaQuery.of(context).size.height*.03,),
          Container(
            height: MediaQuery.of(context).size.height*.15,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width*.03,
              right: MediaQuery.of(context).size.width*.03,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.25),
                    spreadRadius: 6,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Color(m.mainColor)
            ),

            child: FlatButton(
              child:Text("For More Security We Will Send To Your Phone A Message With A Code",
                style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.center,),
              onPressed:null,
            ),
          ),
          SizedBox(  height: MediaQuery.of(context).size.height*.1,),
          GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height*.06,
              width: MediaQuery.of(context).size.width*.6,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width*.2,
                right: MediaQuery.of(context).size.width*.2,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(m.mainColor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.1),
                    spreadRadius: 6,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),

              child: Text("Send",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
            ),
            onTap:(){Navigator.pushNamed(context, '/verificationCode');},
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
                  Navigator.pushNamed(context, '/signIn');
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