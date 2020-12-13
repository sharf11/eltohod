import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myQuestionaire extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return myQuestionaireState();
  }
}
class myQuestionaireState extends State<myQuestionaire>{
  myApp  m=new myApp();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xffdedede),
     body: Container(
       child:Column(
         children: [
           myAppBar("My Questionaire"),
           SizedBox(height: MediaQuery.of(context).size.height*.03,),
           Container(
             height: MediaQuery.of(context).size.height*.12,
             width: MediaQuery.of(context).size.width*.94,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(15)),
                 color: Color(m.mainColor),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(.25),
                   spreadRadius: 4,
                   blurRadius: 4,
                   offset: Offset(3, 3), // changes position of shadow
                 ),
               ],
             ),
             padding: EdgeInsets.only(
               left: MediaQuery.of(context).size.width*.07,
               right:  MediaQuery.of(context).size.width*.04
             ),

             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Questionaire 1",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                     Text("Done By 15 User",style: TextStyle(fontSize: 10,color: Colors.white,),)
                   ],
                 ),
                 InkWell(
                   child: Container(
                     height: MediaQuery.of(context).size.height*.07,
                     width: MediaQuery.of(context).size.width*.3,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(.25),
                           spreadRadius: 4,
                           blurRadius: 4,
                           offset: Offset(3, 3), // changes position of shadow
                         ),
                       ],
                     ),
                       alignment: Alignment.center,

                     child:
                         Text("See Answers",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),)

                   ),
                   onTap: (){Navigator.pushNamed(context, '/user2Result');},
                 ),
               ],
             )
           ),
           SizedBox(height: MediaQuery.of(context).size.height*.02,),
           Container(
             height: MediaQuery.of(context).size.height*.12,
             width: MediaQuery.of(context).size.width*.94,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(15)),
                 color: Colors.white,
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(.25),
                   spreadRadius: 4,
                   blurRadius: 4,
                   offset: Offset(3, 3), // changes position of shadow
                 ),
               ],
             ),
             padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.07,),

             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Questionaire 2",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                 Text("Remaining",style: TextStyle(fontSize: 10,),)
               ],
             ),
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
                 Navigator.pushNamed(context, '/user2Main');
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
                 Navigator.pushNamed(context, '/user2Profile');
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