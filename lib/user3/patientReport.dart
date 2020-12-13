
import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myAppBar.dart';

class patientReport extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return patientReportState();
  }
}
class patientReportState extends State<patientReport>{
  myApp m=new myApp();
  int counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
        children: [
         myAppBar("Patient Reports"),
          Expanded(

            child:  ListView.builder(
              padding: EdgeInsets.only(
                top: 5,
                right: MediaQuery.of(context).size.width*.01,
                left: MediaQuery.of(context).size.width*.01,
              ),
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white
                  ),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*.02,
                    right: MediaQuery.of(context).size.width*.02,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*.07,
                                width: MediaQuery.of(context).size.height*.07,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withOpacity(.075),
                                      spreadRadius: 5,
                                      blurRadius: 4,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/Ellipse 65.png',
                                ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width*.08,),
                              Text("Mr Osama",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                            ],
                          ),
                          //

                          IconButton(icon:  ImageIcon(AssetImage("images/pencil.png"),size: 27,), onPressed: (){
                            Navigator.pushNamed(context, '/specificReport');
                          })
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*.01),
                      Container(
                        height: MediaQuery.of(context).size.height*.002,
                        color: Colors.black38,
                      )
                    ],
                  ),
                );
              },
              itemCount:30,

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