

import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class onlineDectors extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return onlineDectorsState();
  }
}
class onlineDectorsState extends State<onlineDectors>{
  List<String> names=["Ahmed Mansour","Hanan Mousa","Mohamed tarek","Ahmed Hassan"];
  List<String> images=["images/Ellipse 43.png","images/Ellipse 45.png","images/Ellipse 46.png","images/Ellipse 44.png"];
  myApp m=new myApp();
  bool radio=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            myAppBar("Online Doctor"),

            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(
                      top:MediaQuery.of(context).size.height*.01,
                      bottom: MediaQuery.of(context).size.height*.01,
                    ),
                    itemCount: names.length,
                    itemBuilder: (BuildContext context,int index){
                      return ListTile(
                        title:Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0,color: Colors.grey.withOpacity(.09)),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color:Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(.05),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      color:Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12.withOpacity(.1),
                                          spreadRadius: 4,
                                          blurRadius: 4,
                                          offset: Offset(3, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),

                                    child: Row(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*.09,
                                          width:MediaQuery.of(context).size.height*.09,
                                          margin: EdgeInsets.only(
                                            left: MediaQuery.of(context).size.width*.03,
                                            right: MediaQuery.of(context).size.width*.03,
                                            top: MediaQuery.of(context).size.height*.01,
                                            bottom: MediaQuery.of(context).size.height*.01,
                                          ),
                                          child: Image.asset(images[index].toString(),
                                            height: MediaQuery.of(context).size.height*.09,
                                            width:MediaQuery.of(context).size.height*.09,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            top:  MediaQuery.of(context).size.height*.015,
                                            bottom:  MediaQuery.of(context).size.height*.015,
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text("Doctor ",style: TextStyle(fontSize: 11),),
                                                  Text("${names[index]}",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                                                ],
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                              Text("special at Autism fo children",style: TextStyle(fontSize: 9),),
                                              SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star,size: 10,),
                                                      Icon(Icons.star,size: 10,),
                                                      Icon(Icons.star,size: 10,),
                                                      Icon(Icons.star_border,size: 10,),
                                                      Icon(Icons.star_border,size: 10,),
                                                    ],
                                                  ),
                                                  Container(
                                                    width:MediaQuery.of(context).size.width*.05 ,
                                                  ),
                                                  Text("From 200 visitor",style: TextStyle(fontSize: 8),),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: (){Navigator.pushNamed(context, '/doctorProfile');},
                                ),
                                SizedBox(height: 4),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width*.03,
                                      right: MediaQuery.of(context).size.width*.03,
                                      top: MediaQuery.of(context).size.height*.015,
                                      bottom: MediaQuery.of(context).size.height*.02
                                  ),

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,size: 19,),
                                          SizedBox(width: 5,),
                                          Text(" Jeda ,sultan HEssien st,1546ndF",style: TextStyle(fontSize: 9),)
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                      Row(
                                        children: [
                                          ImageIcon(AssetImage("images/cash.png"),size: 19,),
                                          SizedBox(width: 5,),
                                          Text(" 140 (In Door)",style: TextStyle(fontSize: 9),)
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                      Row(
                                        children: [
                                          ImageIcon(AssetImage("images/cash.png"),size: 19,color: Colors.white,),
                                          SizedBox(width: 5,),
                                          Text(" 100 (Online)",style: TextStyle(fontSize: 9),)
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*.032,
                                            width: MediaQuery.of(context).size.width*.27,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              color:Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black12.withOpacity(.05),
                                                  spreadRadius: 4,
                                                  blurRadius: 4,
                                                  offset: Offset(3, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),

                                            child: Text("Avilable Today ",style: TextStyle(fontSize: 8,)),
                                          ),
                                          InkWell(
                                              child: Container(
                                                height: MediaQuery.of(context).size.height*.032,
                                                width: MediaQuery.of(context).size.width*.25,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                                  color:Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12.withOpacity(.05),
                                                      spreadRadius: 4,
                                                      blurRadius: 4,
                                                      offset: Offset(3, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),

                                                child: Text("Book Now ",style: TextStyle(fontSize: 8)),
                                              ),
                                              onTap: (){Navigator.pushNamed(context, '/bookingDetails');}
                                          ),
                                          InkWell(
                                              child: Container(
                                                height: MediaQuery.of(context).size.height*.032,
                                                width: MediaQuery.of(context).size.width*.25,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                                  color: Color(m.mainColor),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey.withOpacity(.2),
                                                      spreadRadius: 4,
                                                      blurRadius: 4,
                                                      offset: Offset(3, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),

                                                child: Text("Online Booking",style: TextStyle(color:Colors.white,fontSize: 8)),
                                              ),
                                              onTap: (){Navigator.pushNamed(context, '/onlineBookingDetails');}
                                          ),
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              ],
                            )
                        ),










                      );})
            )
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