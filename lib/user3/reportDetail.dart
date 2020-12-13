

import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reportDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return reportDetailState();
  }
}
class reportDetailState extends State<reportDetail>{
  myApp m=new myApp();
  int counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefefe),
      body: Container(
        child: Column(
        children: [
          myAppBar("Patient Reports"),
        Expanded(

          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(  height: MediaQuery.of(context).size.height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*.065,
                    width: MediaQuery.of(context).size.height*.065,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(.1),
                          spreadRadius: 5,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image.asset('images/Ellipse 65.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.05,),
                  Text("Mr Osama",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                ],
              ),
              SizedBox(  height: MediaQuery.of(context).size.height*.005,),
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.05,
                  right: MediaQuery.of(context).size.width*.05,
                  top: MediaQuery.of(context).size.height*.01,
                  bottom: MediaQuery.of(context).size.height*.015,
                ),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(.05),
                      spreadRadius: 5,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.03,
                  right: MediaQuery.of(context).size.width*.03,
                  top: MediaQuery.of(context).size.height*.01,
                  bottom: MediaQuery.of(context).size.height*.015,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Fri 12 October",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(m.mainColor)),),
                        IconButton(icon: Icon(Icons.edit,size:18,color: Color(m.mainColor),),
                          onPressed: (){Navigator.pushNamed(context, '/reportDetail');},)
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.01,),
                    Text("Our free online English language courses are designed to make it easy for you to learn the universal language, helping you expand your social circle and give your career a boost. Learning English can often seem difficult and overwhelming but not with Alison's free online English courses. We have training courses focusing on English for hotels, travel and tourism as well as for those in the restaurant industry. More importantly, our basic English classes include important vocabulary and phrases and phrases.",style: TextStyle(fontSize: 11,),textAlign: TextAlign.justify,),
                    SizedBox(height: MediaQuery.of(context).size.height*.01,),
                    Row(
                      children: [
                        Image.asset('images/reportDetail.png',
                          width: MediaQuery.of(context).size.width*.4,
                          height: MediaQuery.of(context).size.height*.25,
                          fit: BoxFit.fill,
                        ),
                        Image.asset('images/reportDetail.png',
                          width: MediaQuery.of(context).size.width*.4,
                          height: MediaQuery.of(context).size.height*.25,
                          fit: BoxFit.fill,
                        ),
                      ],
                    )
                  ],
                ),
              ),

              SizedBox( height: MediaQuery.of(context).size.height*.06,),
              GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height*.05,
                  width: MediaQuery.of(context).size.width*.5,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*.2,
                    right: MediaQuery.of(context).size.width*.2,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(m.mainColor),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),


                ),
                onTap:(){Navigator.pushNamed(context, '/5');},
              ),
              SizedBox( height: MediaQuery.of(context).size.height*.06,),
            ],
          ),
        )
        ],
      ),),
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
                  Navigator.pushNamed(context, '/user3Main');
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
                  Navigator.pushNamed(context, '/user3Profile');
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