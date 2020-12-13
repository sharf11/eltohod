import 'dart:async';

import 'package:eltohod/doctors/filter.dart';
import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myAppBar.dart';

class endCall extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return endCallState();
  }
}
class endCallState extends State<endCall>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(

           child: Column(
             children: [
               Container(
                 padding: EdgeInsets.only(
                     top: MediaQuery.of(context).size.height * .035,
                     left: MediaQuery.of(context).size.width * .015,
                     right: MediaQuery.of(context).size.width * .015),
                 alignment: Alignment.center,
                 height: MediaQuery.of(context).size.height * .12,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(15),
                         bottomRight: Radius.circular(15)),
                     color: Color(m.whiteMainColor)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     IconButton(
                       icon: Icon(
                         Icons.arrow_back_ios,
                       ),
                       onPressed: (){Navigator.pushNamed(context, '/homePage');},
                     ),
                     Text(
                       "Thank You",
                       style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                     ),
                     IconButton(icon: Icon(Icons.notifications),onPressed: (){
                       Navigator.pushNamed(context, '/notifiction');
                     },)
                   ],
                 ),
               ),

           Expanded(
             child: ListView(
               padding: EdgeInsets.zero,
               children: [
                 SizedBox(height: MediaQuery.of(context).size.height*.03,),
                 Container(
                     height: MediaQuery.of(context).size.height*.18,
                     width: MediaQuery.of(context).size.width*.42,
                     margin: EdgeInsets.only(
                       right: MediaQuery.of(context).size.width*.29,
                       left: MediaQuery.of(context).size.width*.29,
                     ),
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                         color: Color(m.mainColor)
                     ),

                     child: Column(
                       children: [
                         SizedBox(height: MediaQuery.of(context).size.height*.03,),
                         Icon(Icons.check,size: 60,color: Colors.white,),
                         Text("Thank You",style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)
                       ],
                     )
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*.025,),

                 Text("Please Rate ",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.star,size: 30,),
                       Icon(Icons.star,size: 30,),
                       Icon(Icons.star,size: 30,),
                       Icon(Icons.star_border,size: 30,),
                       Icon(Icons.star_border,size: 30,),
                     ],
                   ),
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*.03,),
                 Container(
                     margin: EdgeInsets.only(
                       left: MediaQuery.of(context).size.width*.05,
                       right: MediaQuery.of(context).size.width*.05,
                       top: MediaQuery.of(context).size.height*.03,
                       bottom: MediaQuery.of(context).size.height*.01,
                     ),
                     alignment: Alignment.centerLeft,
                     child: Text("Add Comment",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),)),
                 Container(
                   margin: EdgeInsets.only(
                     left: MediaQuery.of(context).size.width*.05,
                     right: MediaQuery.of(context).size.width*.05,
                   ),
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.all(Radius.circular(10)),
                     color: Colors.white,
                   ),
                   child: TextFormField(
                     onFieldSubmitted: (value){
                       FocusScope.of(context).requestFocus(FocusNode());
                     },
                     minLines: 3,
                     maxLines: 3,
                     decoration: InputDecoration(
                       contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                       enabledBorder: new OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide(color: Color(0xffdedede))
                       ),
                       focusedBorder:  new OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide(color: Color(0xffdedede))
                       ),
                       focusedErrorBorder:new OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20),
                           borderSide: BorderSide(color: Color(0xfff00f00))
                       ),
                       errorBorder:new OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide(color: Color(0xfff00f00))
                       ),
                     ),
                     controller: null,
                   ),
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*.03,),
                 GestureDetector(
                   child: Container(
                     height: MediaQuery.of(context).size.height*.045,
                     width: MediaQuery.of(context).size.width*.45,
                     margin: EdgeInsets.only(
                       right: MediaQuery.of(context).size.width*.28,
                       left: MediaQuery.of(context).size.width*.27,
                     ),
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(15)),
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

                     child:Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: ("Poppins-Medium"))),

                   ),
                   onTap: (){Navigator.pushNamed(context, '/searchDectors');},
                 ),
                 SizedBox(height: 200,),
               ],
             ),
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