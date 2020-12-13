import 'package:auto_size_text/auto_size_text.dart';
import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class supportRooms extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return supportRoomState();
  }
}
class supportRoomState extends State<supportRooms>{
myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: Column(
         children: [
           myAppBar("Support Rooms"),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.02,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*.035,
                    right: MediaQuery.of(context).size.width*.035,
                  ),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*.03,
                    right: MediaQuery.of(context).size.width*.03,
                    top: MediaQuery.of(context).size.height*.01,
                    bottom: MediaQuery.of(context).size.height*.01,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/services/help2.png"),
                      matchTextDirection: true,
                      alignment: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xfffc8b00),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.25),
                        spreadRadius: 7,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child:   Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('images/services/help.png',color: Colors.white,
                            width: MediaQuery.of(context).size.width*.055,
                          ),
                          SizedBox(width: 6,),
                          Text("Support Rooms",style: TextStyle(
                              fontSize: 18,color: Colors.white,fontFamily: "Poppins-ExtraBold"),)
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      AutoSizeText("The main role of a support person is to help their loved one heal through support, encouragement and communication during their stay at Strong Memorial Hospital. Because of the importance "
                        ,style: TextStyle(fontSize: 10,color: Colors.white,),
                        minFontSize: 10,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,),
                      SizedBox( height: MediaQuery.of(context).size.height*.015,)
                    ],
                  )

              ),
              SizedBox(height: MediaQuery.of(context).size.height*.04,),
              Container(
                //width: MediaQuery.of(context).size.width*.92,
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
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.035,
                  right:  MediaQuery.of(context).size.width*.035,
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*.92,
                      decoration: BoxDecoration(
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

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width*.05,
                        right: MediaQuery.of(context).size.width*.05,
                        top: MediaQuery.of(context).size.height*.013,
                        bottom: MediaQuery.of(context).size.height*.013,
                      ),
                      child:
                      Text("Room Title Here",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),

                    ),
                    SizedBox(height: 3),
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
                            Text("12 October \\02:30 Pm",style: TextStyle(fontSize: 11),),
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
                                SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                Text("(Remaining 2)",style: TextStyle(fontSize: 11),)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height*.035,
                                    width: MediaQuery.of(context).size.width*.25,
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
                                  onTap:(){Navigator.pushNamed(context, '/joinSupportRooms');},
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

                          ],
                        )
                    ),

                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.04,),
              Container(
                //width: MediaQuery.of(context).size.width*.92,
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
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.035,
                  right:  MediaQuery.of(context).size.width*.035,
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*.92,
                      decoration: BoxDecoration(
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

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width*.05,
                        right: MediaQuery.of(context).size.width*.05,
                        top: MediaQuery.of(context).size.height*.013,
                        bottom: MediaQuery.of(context).size.height*.013,
                      ),
                      child:
                      Text("Room Title Here",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),

                    ),
                    SizedBox(height: 3),
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
                            Text("12 October \\02:30 Pm",style: TextStyle(fontSize: 11),),
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
                                SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                Text("(Remaining 2)",style: TextStyle(fontSize: 11),)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height*.035,
                                    width: MediaQuery.of(context).size.width*.25,
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
                                  onTap:(){Navigator.pushNamed(context, '/joinSupportRooms');},
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

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