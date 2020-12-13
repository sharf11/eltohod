import 'package:eltohod/EnterApp/EnterPage.dart';
import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class questionaireDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return questionaireDetailsState();
  }
}
class questionaireDetailsState extends State<questionaireDetails>{
  myApp m=new myApp();
  var   QType;
  var   QType1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          children: [
            myAppBar("Questionaire Details"),
            SizedBox(height: MediaQuery.of(context).size.height*.06,),
         Container(
           margin: EdgeInsets.only(
             right: MediaQuery.of(context).size.width*.05,
             left: MediaQuery.of(context).size.width*.05,
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   GestureDetector(
                     child: Container(
                       height: MediaQuery.of(context).size.height*.09,
                       width: MediaQuery.of(context).size.width*.4,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
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

                       child: Text("Offline",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),


                     ),
                     onTap:  (){Navigator.pushNamed(context, '/offlineQuestionnaire');},
                   ),
                   GestureDetector(
                     child: Container(
                       height: MediaQuery.of(context).size.height*.09,
                       width: MediaQuery.of(context).size.width*.4,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(.5),
                             spreadRadius: 4,
                             blurRadius: 9,
                             offset: Offset(3, 3), // changes position of shadow
                           ),
                         ],
                       ),

                       child: Text("Online",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),


                     ),
                     onTap:  (){Navigator.pushNamed(context, '/onlineQuestionnaire');},
                   ),



                 ],
               ),
               SizedBox(height: MediaQuery.of(context).size.height*.05,),
               Container(
                 height: MediaQuery.of(context).size.height*.001,
                 color: Colors.black54,
               ),
               SizedBox(height: MediaQuery.of(context).size.height*.008,),
               Text("Test Opions",style: TextStyle(fontWeight: FontWeight.bold),),
               SizedBox(height: MediaQuery.of(context).size.height*.02,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   GestureDetector(
                     child: Container(
                       height: MediaQuery.of(context).size.height*.09,
                       width: MediaQuery.of(context).size.width*.28,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         color: QType=='video'?Color(m.mainColor):Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                         boxShadow: [
                           BoxShadow(
                             color: QType=='video'?Colors.grey.withOpacity(.5):Colors.black12.withOpacity(.04),
                             spreadRadius: 4,
                             blurRadius: 9,
                             offset: Offset(3, 3), // changes position of shadow
                           ),
                         ],
                       ),

                       child: Text("Yes Or No",style: TextStyle(color: QType=='video'?Colors.white:Colors.black,fontSize: 11.5,fontWeight: FontWeight.bold)
                           ,textAlign: TextAlign.center,),


                     ),
                     onTap: (){
                       setState(() {
                         QType="video";
                       });
                     },
                   ),
                   GestureDetector(
                     child: Container(
                       height: MediaQuery.of(context).size.height*.09,
                       width: MediaQuery.of(context).size.width*.28,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         color: QType=='voice'?Color(m.mainColor):Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                         boxShadow: [
                           BoxShadow(
                             color: QType=='voice'?Colors.grey.withOpacity(.5):Colors.black12.withOpacity(.04),
                             spreadRadius: 4,
                             blurRadius: 9,
                             offset: Offset(3, 3), // changes position of shadow
                           ),
                         ],
                       ),

                       child: Text("Writing",style: TextStyle(color: QType=='voice'?Colors.white:Colors.black,fontSize: 11.5,fontWeight: FontWeight.bold)
                             ,textAlign: TextAlign.center),


                     ),
                     onTap: (){
                       setState(() {
                         QType="voice";
                       });
                     },
                   ),
                   GestureDetector(
                     child: Container(
                       height: MediaQuery.of(context).size.height*.09,
                       width: MediaQuery.of(context).size.width*.28,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         color:  QType=='chat'?Color(m.mainColor):Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                         boxShadow: [
                           BoxShadow(
                             color: QType=='chat'?Colors.grey.withOpacity(.5):Colors.black12.withOpacity(.04),
                             spreadRadius: 4,
                             blurRadius: 9,
                             offset: Offset(3, 3), // changes position of shadow
                           ),
                         ],
                       ),

                       child:  Text("Both",style: TextStyle(color: QType=='chat'?Colors.white:Colors.black,fontSize: 11.5,fontWeight: FontWeight.bold)),


                     ),
                     onTap: (){
                       setState(() {
                         QType="chat";
                       });
                     },
                   ),

                 ],
               ),
               SizedBox(height: MediaQuery.of(context).size.height*.05,),
               Container(
                 height: MediaQuery.of(context).size.height*.001,
                 color: Colors.black54,
               ),
               SizedBox(height: MediaQuery.of(context).size.height*.008,),
               Text("Test Opions",style: TextStyle(fontWeight: FontWeight.bold),),
               SizedBox(height: MediaQuery.of(context).size.height*.02,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   GestureDetector(
                     child: Container(
                       height: MediaQuery.of(context).size.height*.09,
                       width: MediaQuery.of(context).size.width*.28,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         color: Colors.black12,
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.01)),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black12.withOpacity(.04),
                             spreadRadius: 4,
                             blurRadius: 9,
                             offset: Offset(3, 3), // changes position of shadow
                           ),
                         ],
                       ),

                       child: Text("Video Call",style: TextStyle(color:Colors.black54,fontSize: 11.5,fontWeight: FontWeight.bold)
                         ,textAlign: TextAlign.center,),


                     ),
                     onTap: (){

                     },
                   ),
                   GestureDetector(
                     child: Container(
                       height: MediaQuery.of(context).size.height*.09,
                       width: MediaQuery.of(context).size.width*.28,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         color: Colors.black12,
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.01)),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black12.withOpacity(.04),
                             spreadRadius: 4,
                             blurRadius: 9,
                             offset: Offset(3, 3), // changes position of shadow
                           ),
                         ],
                       ),

                       child: Text("Voice Call",style: TextStyle(color:Colors.black54,fontSize: 11.5,fontWeight: FontWeight.bold)
                         ,textAlign: TextAlign.center,),


                     ),
                     onTap: (){

                     },
                   ),
                   GestureDetector(
                     child: Container(
                       height: MediaQuery.of(context).size.height*.09,
                       width: MediaQuery.of(context).size.width*.28,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         color: Colors.black12,
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.01)),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black12.withOpacity(.04),
                             spreadRadius: 4,
                             blurRadius: 9,
                             offset: Offset(3, 3), // changes position of shadow
                           ),
                         ],
                       ),

                       child: Text("Chat",style: TextStyle(color:Colors.black54,fontSize: 11.5,fontWeight: FontWeight.bold)
                         ,textAlign: TextAlign.center,),


                     ),
                     onTap: (){

                     },
                   ),

                 ],
               ),
               SizedBox(height: MediaQuery.of(context).size.height*.05,),
               GestureDetector(
                 child: Container(
                   height: MediaQuery.of(context).size.height*.05,
                   width: MediaQuery.of(context).size.width*.46,
                   margin: EdgeInsets.only(
                     left: MediaQuery.of(context).size.width*.23,
                     right: MediaQuery.of(context).size.width*.23,
                   ),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     color: Color(m.mainColor),
                     borderRadius: BorderRadius.all(Radius.circular(15)),
                     border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.01)),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black12.withOpacity(.04),
                         spreadRadius: 4,
                         blurRadius: 9,
                         offset: Offset(3, 3), // changes position of shadow
                       ),
                     ],
                   ),

                   child: Text("Confirm",style: TextStyle(color:Colors.white,fontSize: 11.5,fontWeight: FontWeight.bold)
                     ,textAlign: TextAlign.center,),


                 ),
                 onTap: (){

                 },
               ),
             ],
           ),
         )

          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
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