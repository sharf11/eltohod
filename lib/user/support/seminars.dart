import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class seminars extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return seminarsState();
  }
}
class seminarsState extends State<seminars>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            myAppBar("Seminars"),
           Expanded(
             child: ListView(
               padding: EdgeInsets.zero,
               children: [
                 SizedBox(height: MediaQuery.of(context).size.height*.03,),
                 Container(
                   width: MediaQuery.of(context).size.width*.9,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Container(
                         height: MediaQuery.of(context).size.height*.1,
                         width: MediaQuery.of(context).size.width*.42,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(15)),
                           border: Border.all(width:1.5,color:Colors.black12.withOpacity(.05)),
                           color: Color(m.mainColor),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black12.withOpacity(.1),
                               spreadRadius: 4,
                               blurRadius: 4,
                               offset: Offset(0, 3), // changes position of shadow
                             ),
                           ],

                         ),

                         child: FlatButton(
                           child:
                           Text("In Door",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500)),

                           onPressed:null,
                         ),
                       ),
                       Container(
                         height: MediaQuery.of(context).size.height*.1,
                         width: MediaQuery.of(context).size.width*.42,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(15)),
                           border: Border.all(width:1.5,color:Colors.black12.withOpacity(.05)),
                           color: Colors.white,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black12.withOpacity(.07),
                               spreadRadius: 4,
                               blurRadius: 4,
                               offset: Offset(0, 3), // changes position of shadow
                             ),
                           ],
                         ),

                         child: FlatButton(
                           child:
                           Text("Online",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500)),

                           onPressed:null,
                         ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*.04,),
                 Container(
                   width: MediaQuery.of(context).size.width,
                   margin: EdgeInsets.only(
                     left: MediaQuery.of(context).size.width*.04,
                     right: MediaQuery.of(context).size.width*.04,
                   ),
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
                       Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             color:Colors.white,
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black12.withOpacity(.07),
                                 spreadRadius: 4,
                                 blurRadius: 4,
                                 offset: Offset(3, 3), // changes position of shadow
                               ),
                             ],
                           ),
                           padding: EdgeInsets.only(
                             left: MediaQuery.of(context).size.width*.05,
                             right: MediaQuery.of(context).size.width*.05,
                             top: MediaQuery.of(context).size.height*.013,
                             bottom: MediaQuery.of(context).size.height*.013,
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Seminar Title Here",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                               SizedBox(height:MediaQuery.of(context).size.height*.01, ),
                               Text("Asd and communication during their stay at Strong Memorial Hospitay are critical",
                                   style: TextStyle(fontSize: 10)),
                               SizedBox(height:MediaQuery.of(context).size.height*.01, ),
                             ],
                           )),
                       SizedBox(height: 3,),
                       Container(
                           alignment: Alignment.centerLeft,
                           padding: EdgeInsets.only(
                             left: MediaQuery.of(context).size.width*.065,
                             right:  MediaQuery.of(context).size.width*.05,
                             top: MediaQuery.of(context).size.height*.015,
                             bottom: MediaQuery.of(context).size.height*.015,
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text("The Lecturer ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(m.mainColor),fontSize: 11),),
                                   Text(" MR.Rami Ahmed",style: TextStyle(fontSize: 11),),
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   Text("Start At ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(m.mainColor),fontSize: 11),),
                                   Text(" Fri12 October \\02:30 Pm",style: TextStyle(fontSize: 11),),
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   Row(
                                     children: [
                                       ImageIcon(AssetImage("images/clock.png"),size: 25,),
                                       SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                       Container(
                                         height: 25,
                                         width: 1,
                                         color: Colors.black54,
                                       ),
                                       SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                       Text("45 Min",style: TextStyle(fontSize: 11)),

                                     ],
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width*.08,),
                                   Text("(per Class)",style: TextStyle(color: Color(m.mainColor),fontSize: 11),)
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   Row(
                                     children: [
                                       ImageIcon(AssetImage("images/group.png"),size: 25,),
                                       SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                       Container(
                                         height: 25,
                                         width: 1,
                                         color: Colors.black54,
                                       ),
                                       SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                       Text("8 Members",style: TextStyle(fontSize: 11)),

                                     ],
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width*.08,),
                                   Text("(Remaining 2)",style: TextStyle(color: Color(m.mainColor),fontSize: 11),)
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   Icon(Icons.location_on,size: 25,),
                                   SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                   Container(
                                     height: 25,
                                     width: 1,
                                     color: Colors.black54,
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                   Text(" Jeda,Sultan Hessen st,1546 2nd F",style: TextStyle(fontSize: 11)),

                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   ImageIcon(AssetImage("images/cash.png"),size: 25,),
                                   SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                   Container(
                                     height: 25,
                                     width: 1,
                                     color: Colors.black54,
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                   Text(" 140",style: TextStyle(fontSize: 11)),

                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   GestureDetector(
                                     child: Container(
                                       height: MediaQuery.of(context).size.height*.037,
                                       width: MediaQuery.of(context).size.width*.3,
                                       alignment: Alignment.center,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.all(Radius.circular(15)),
                                         color: Color(m.mainColor),
                                         boxShadow: [
                                           BoxShadow(
                                             color: Colors.black12.withOpacity(.1),
                                             spreadRadius: 4,
                                             blurRadius: 4,
                                             offset: Offset(0, 3), // changes position of shadow
                                           ),
                                         ],
                                       ),

                                       child:
                                         Text("Join",style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.bold)),

                                     ),
                                     onTap:(){Navigator.pushNamed(context, '/joinSeminar');},
                                   ),
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.005,),

                             ],
                           )
                       ),
                     ],
                   ),
                 ),


                 SizedBox(height: MediaQuery.of(context).size.height*.04,),
                 Container(
                   width: MediaQuery.of(context).size.width,
                   margin: EdgeInsets.only(
                     left: MediaQuery.of(context).size.width*.04,
                     right: MediaQuery.of(context).size.width*.04,
                   ),
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
                       Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             color:Colors.white,
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black12.withOpacity(.07),
                                 spreadRadius: 4,
                                 blurRadius: 4,
                                 offset: Offset(3, 3), // changes position of shadow
                               ),
                             ],
                           ),
                           padding: EdgeInsets.only(
                             left: MediaQuery.of(context).size.width*.05,
                             right: MediaQuery.of(context).size.width*.05,
                             top: MediaQuery.of(context).size.height*.013,
                             bottom: MediaQuery.of(context).size.height*.013,
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Seminar Title Here",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                               SizedBox(height:MediaQuery.of(context).size.height*.01, ),
                               Text("Asd and communication during their stay at Strong Memorial Hospitay are critical",
                                   style: TextStyle(fontSize: 10)),
                               SizedBox(height:MediaQuery.of(context).size.height*.01, ),
                             ],
                           )),
                       SizedBox(height: 3,),
                       Container(
                           alignment: Alignment.centerLeft,
                           padding: EdgeInsets.only(
                             left: MediaQuery.of(context).size.width*.065,
                             right:  MediaQuery.of(context).size.width*.05,
                             top: MediaQuery.of(context).size.height*.015,
                             bottom: MediaQuery.of(context).size.height*.015,
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text("The Lecturer ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(m.mainColor),fontSize: 11),),
                                   Text(" MR.Rami Ahmed",style: TextStyle(fontSize: 11),),
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   Text("Start At ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(m.mainColor),fontSize: 11),),
                                   Text(" Fri12 October \\02:30 Pm",style: TextStyle(fontSize: 11),),
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   Row(
                                     children: [
                                       ImageIcon(AssetImage("images/clock.png"),size: 25,),
                                       SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                       Container(
                                         height: 25,
                                         width: 1,
                                         color: Colors.black54,
                                       ),
                                       SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                       Text("45 Min",style: TextStyle(fontSize: 11)),

                                     ],
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width*.08,),
                                   Text("(per Class)",style: TextStyle(color: Color(m.mainColor),fontSize: 11),)
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   Row(
                                     children: [
                                       ImageIcon(AssetImage("images/group.png"),size: 25,),
                                       SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                       Container(
                                         height: 25,
                                         width: 1,
                                         color: Colors.black54,
                                       ),
                                       SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                       Text("8 Members",style: TextStyle(fontSize: 11)),

                                     ],
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width*.08,),
                                   Text("(Remaining 2)",style: TextStyle(color: Color(m.mainColor),fontSize: 11),)
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   Icon(Icons.location_on,size: 25,),
                                   SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                   Container(
                                     height: 25,
                                     width: 1,
                                     color: Colors.black54,
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                   Text(" Jeda,Sultan Hessen st,1546 2nd F",style: TextStyle(fontSize: 11)),

                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 children: [
                                   ImageIcon(AssetImage("images/cash.png"),size: 25,),
                                   SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                   Container(
                                     height: 25,
                                     width: 1,
                                     color: Colors.black54,
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                   Text(" 140",style: TextStyle(fontSize: 11)),

                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.02,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   GestureDetector(
                                     child: Container(
                                       height: MediaQuery.of(context).size.height*.037,
                                       width: MediaQuery.of(context).size.width*.3,
                                       alignment: Alignment.center,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.all(Radius.circular(15)),
                                         color: Color(m.mainColor),
                                         boxShadow: [
                                           BoxShadow(
                                             color: Colors.black12.withOpacity(.1),
                                             spreadRadius: 4,
                                             blurRadius: 4,
                                             offset: Offset(0, 3), // changes position of shadow
                                           ),
                                         ],
                                       ),

                                       child:
                                         Text("Join",style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.bold)),
                                     ),
                                     onTap:(){Navigator.pushNamed(context, '/joinSeminar');},
                                   ),
                                 ],
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.005,),

                             ],
                           )
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*.05,),

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