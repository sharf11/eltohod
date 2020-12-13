import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myAppBar extends StatefulWidget{
  String title;
  myAppBar(String title)
  {this.title=title;}
  @override
  State<StatefulWidget> createState() {
    return myAppBarState(this.title);
  }
}
class myAppBarState extends State<myAppBar>{
  myApp m=new myApp();
  String title;
  myAppBarState(String title)
  {this.title=title;}
  @override
  Widget build(BuildContext context) {
   return Container(
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
           onPressed: (){Navigator.pop(context);},
         ),
         Text(
           "$title",
           style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
         ),
         IconButton(icon: Icon(Icons.notifications),onPressed: (){
           Navigator.pushNamed(context, '/notifiction');
         },)
       ],
     ),
   );
  }
}