import 'dart:async';

import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class finishBooking extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return finishBookingState();
  }
}
class finishBookingState extends State<finishBooking>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          children: [

            myAppBar("Thank You"),
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
            Container(
                height: MediaQuery.of(context).size.height*.17,
                width: MediaQuery.of(context).size.width*.42,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(m.mainColor)
                ),


                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Icon(Icons.check,size: 60,color: Colors.white,),
                    Text("Thank You !",style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)
                  ],
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.05,),

            Text("your booking is successful",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            SizedBox(height: MediaQuery.of(context).size.height*.015,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Doctor ",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "Ahmed Mansour",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.015,),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width*.05,
                right: MediaQuery.of(context).size.width*.05,
              ),
              width: MediaQuery.of(context).size.width*.95,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*.02,
                bottom: MediaQuery.of(context).size.height*.02,
                left: MediaQuery.of(context).size.width*.05,
                right: MediaQuery.of(context).size.width*.05,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                color:Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.1),
                    spreadRadius: 4,
                    blurRadius: 9,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                   SizedBox(height: MediaQuery.of(context).size.height*.0065,),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*.04,),
                      ImageIcon(AssetImage("images/timeTable.png"),size: 25,color: Color(m.mainColor),),
                      SizedBox(width: MediaQuery.of(context).size.width*.045,),
                      Container(
                        height: 32,
                        width:1.0,
                        color: Colors.black45,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("02:30 PM",style: TextStyle(fontSize: 11),),
                          Text("Fri 12 October",style: TextStyle(fontSize: 11))
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.0065,),
                  Container(
                    height: MediaQuery.of(context).size.height*.001,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black45,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.0065,),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*.04,),
                      Icon(Icons.location_on,color: Color(m.mainColor),size: 25,),
                      SizedBox(width: MediaQuery.of(context).size.width*.045,),
                      Container(
                        height: 32,
                        width:1.0,
                        color: Colors.black45,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*.03,),
                      Text("Jeda,Sultan Hessien st 1546 2nd F ",style: TextStyle(fontSize: 11),),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.0065,),
                  Container(
                    height: MediaQuery.of(context).size.height*.001,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black45,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.0065,),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*.04,),
                      ImageIcon(AssetImage("images/cash.png"),size: 25,color: Color(m.mainColor),),
                      SizedBox(width: MediaQuery.of(context).size.width*.045,),
                      Container(
                        height: 32,
                        width:1.0,
                        color: Colors.black45,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*.03,),
                      Text("140 ",style: TextStyle(fontSize: 11),),
                    ],
                  ),

                ],
              ),

            ),
            SizedBox(height: MediaQuery.of(context).size.height*.035,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height*.045,
                width: MediaQuery.of(context).size.width*.5,
                alignment: Alignment.center,
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

                child:  Text("Appointments",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: ("Poppins-Medium"))),
              ),
              onTap: (){Navigator.pushNamed(context, '/appointment');},
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