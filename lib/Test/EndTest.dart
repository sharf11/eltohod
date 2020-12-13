import 'dart:async';

import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class endTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return endTestState();
  }
}
class endTestState extends State<endTest>{
  void initState() {
    super.initState();
  }
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), ()=>Navigator.of(context)
        .pushNamedAndRemoveUntil('/result',
            (Route<dynamic> route) => false));
   return Scaffold(
     body: Container(
       child: Column(

         children: [

           myAppBar("Diagnostic Test"),
           SizedBox(height: MediaQuery.of(context).size.height*.08,),


           Container(
             height: MediaQuery.of(context).size.height*.18,
             width: MediaQuery.of(context).size.width*.45,
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
           SizedBox(height: MediaQuery.of(context).size.height*.05,),

           Container(
               width: MediaQuery.of(context).size.width*.8,
               child: Text("Please Wait while collecting the results",style: TextStyle(color:Colors.black,fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,))


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