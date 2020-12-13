import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appointment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return appointmentState();
  }
}
class appointmentState extends State<appointment>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            myAppBar("Appointments"),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *.62,
                    child: Stack(
                      children: [
                        Positioned(
                          top: MediaQuery.of(context).size.height * .1,
                          child: Container(
                            width: MediaQuery.of(context).size.width*.93,
                            margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .035,
                              right: MediaQuery.of(context).size.width * .035,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0,color: Colors.grey.withOpacity(.09)),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color:Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(.03),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Card(
                              margin: EdgeInsets.all(15),
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .03,
                                  ),
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
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .015,
                                  ),
                                  Text(
                                    "M.B.B.Ch.,Ms ENT,MD ENT. Cairo University",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                      ImageIcon(AssetImage("images/user.png"),color: Color(m.mainColor),size: 25,),
                                      SizedBox(width: MediaQuery.of(context).size.width*.06,),
                                      Container(
                                        height: 32,
                                        width:1.0,
                                        color: Colors.black45,
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Ahmed mohamed",style: TextStyle(fontSize: 11),),
                                          SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                          Text("+966125475574",style: TextStyle(fontSize: 11))
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                  Container(
                                    height: MediaQuery.of(context).size.height*.001,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                  Row(
                                    children: [
                                      SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                      ImageIcon(AssetImage("images/timeTable.png"),color: Color(m.mainColor),size: 25,),
                                      SizedBox(width: MediaQuery.of(context).size.width*.05,),
                                      Container(
                                        height: 32,
                                        width:1.0,
                                        color: Colors.black45,
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("02:30 PM",style: TextStyle(fontSize: 11)),
                                          SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                          Text("Fri 12 October",style: TextStyle(fontSize: 11))
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                  Container(
                                    height: MediaQuery.of(context).size.height*.001,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                  Row(
                                    children: [
                                      SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                      Icon(Icons.location_on,color: Color(m.mainColor),size: 25,),
                                      SizedBox(width: MediaQuery.of(context).size.width*.05,),
                                      Container(
                                        height: 32,
                                        width:1.0,
                                        color: Colors.black45,
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                      Text("Jeda,Sultan Hessien st 1546 2nd F ",style: TextStyle(fontSize: 11),),
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                  Container(
                                    height: MediaQuery.of(context).size.height*.001,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                          ImageIcon(AssetImage("images/cash.png"),color: Color(m.mainColor),size: 25,),
                                          SizedBox(width: MediaQuery.of(context).size.width*.05,),
                                          Container(
                                            height: 32,
                                            width:1.0,
                                            color: Colors.black45,
                                          ),
                                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                          Text("140 ",style: TextStyle(fontSize: 11),),
                                        ],
                                      ),
                                      Text("Cach In Clinic",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.height*.04,
                                        width: MediaQuery.of(context).size.width*.375,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          color: Color(m.mainColor),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(.5),
                                              spreadRadius: 4,
                                              blurRadius: 4,
                                              offset: Offset(3, 3), // changes position of shadow
                                            ),
                                          ],
                                        ),

                                        child: FlatButton(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500)),
                                              Icon(Icons.close,size: 20,color: Colors.white,)
                                            ],
                                          ),
                                          onPressed:null,
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context).size.height*.04,
                                        width: MediaQuery.of(context).size.width*.375,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          color: Color(m.mainColor),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(.5),
                                              spreadRadius: 4,
                                              blurRadius: 4,
                                              offset: Offset(3, 3), // changes position of shadow
                                            ),
                                          ],
                                        ),

                                        child: FlatButton(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("Map",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500)),
                                              Icon(Icons.location_on,size: 20,color: Colors.white,)
                                            ],
                                          ),
                                          onPressed:null,
                                        ),
                                      ),
                                    ],
                                  ),


                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * .38,
                          top: MediaQuery.of(context).size.height * .015,
                          child: Container(
                              width: MediaQuery.of(context).size.width * .24,
                              height: MediaQuery.of(context).size.width * .24,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1000)),
                                  color: Colors.black12),
                              child: Image.asset(
                                'images/Ellipse 43.png',
                                fit: BoxFit.fill,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.0,),
                  Container(
                    width: MediaQuery.of(context).size.width*.92,
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .035,
                      right: MediaQuery.of(context).size.width * .035,
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
                          width: MediaQuery.of(context).size.width*.92,
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
                                          height: 30,
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
                                          height: 30,
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
                                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height*.04,
                                      width: MediaQuery.of(context).size.width*.375,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Color(m.mainColor),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(.5),
                                            spreadRadius: 4,
                                            blurRadius: 4,
                                            offset: Offset(3, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),

                                      child: FlatButton(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500)),
                                            Icon(Icons.close,size: 20,color: Colors.white,)
                                          ],
                                        ),
                                        onPressed:null,
                                      ),
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
                    width: MediaQuery.of(context).size.width*.92,
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .035,
                      right: MediaQuery.of(context).size.width * .035,
                      bottom: 100
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
                          width: MediaQuery.of(context).size.width*.92,
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
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*.05,
                            right: MediaQuery.of(context).size.width*.05,
                            top: MediaQuery.of(context).size.height*.013,
                            bottom: MediaQuery.of(context).size.height*.013,
                          ),
                          child:
                          Text("Seminar Title Here",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),

                        ),
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
                                          height: 30,
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
                                          height: 30,
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
                                      height: 30,
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
                                      height: 30,
                                      width: 1,
                                      color: Colors.black54,
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                    Text(" 140",style: TextStyle(fontSize: 11)),

                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height*.04,
                                      width: MediaQuery.of(context).size.width*.375,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Color(m.mainColor),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(.5),
                                            spreadRadius: 4,
                                            blurRadius: 4,
                                            offset: Offset(3, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),

                                      child: FlatButton(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500)),
                                            Icon(Icons.close,size: 20,color: Colors.white,)
                                          ],
                                        ),
                                        onPressed:null,
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height*.04,
                                      width: MediaQuery.of(context).size.width*.375,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Color(m.mainColor),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(.5),
                                            spreadRadius: 4,
                                            blurRadius: 4,
                                            offset: Offset(3, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),

                                      child: FlatButton(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("Map",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500)),
                                            Icon(Icons.location_on,size: 20,color: Colors.white,)
                                          ],
                                        ),
                                        onPressed:null,
                                      ),
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
                  /*
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                   Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
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
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width*.05,
                          right: MediaQuery.of(context).size.width*.05,
                          top: MediaQuery.of(context).size.height*.013,
                          bottom: MediaQuery.of(context).size.height*.013,
                        ),
                        child: Text("Room Title Here",style: TextStyle(fontSize: 17),)),

                   Container(
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
                      alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width*.05,
                          right: MediaQuery.of(context).size.width*.05,
                          top: MediaQuery.of(context).size.height*.013,
                          bottom: MediaQuery.of(context).size.height*.013,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("12 October \\02:30Pm",style: TextStyle(fontSize: 11.5),textAlign: TextAlign.start,),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                            Row(
                              children: [
                                Icon(Icons.access_time,size: 25,),
                                SizedBox(width: MediaQuery.of(context).size.width*.06,),
                                Container(
                                  height: MediaQuery.of(context).size.height*.05,
                                  width: MediaQuery.of(context).size.width*.003,
                                  color: Colors.black,
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                    Text("45 Min"),

                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.group,size: 25,),
                                    SizedBox(width: MediaQuery.of(context).size.width*.06,),
                                    Container(
                                      height: MediaQuery.of(context).size.height*.05,
                                      width: MediaQuery.of(context).size.width*.003,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                    Text("8 Members",style: TextStyle(fontSize: 11)),

                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.08,),
                                Text("(Remaining 2)",style: TextStyle(fontSize: 9),)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                            Container(
                              height: MediaQuery.of(context).size.height*.05,
                              width: MediaQuery.of(context).size.width*.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Color(m.mainColor),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    spreadRadius: 4,
                                    blurRadius: 4,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ],
                              ),

                              child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold)),
                                    Icon(Icons.close,size: 25,color: Colors.white,)
                                  ],
                                ),
                                onPressed:null,
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

                          ],
                        )
                    ),

                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width*.05,
                          right: MediaQuery.of(context).size.width*.05,
                          top: MediaQuery.of(context).size.height*.013,
                          bottom: MediaQuery.of(context).size.height*.013,
                        ),
                        child: Text("Seminar Title Here",style: TextStyle(fontSize: 17),)),

                 Container(
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
                               Text("The Lecturer ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(m.mainColor),fontSize: 11.5),),
                               Text(" MR.Rami Ahmed",style: TextStyle(fontSize: 11.5),),
                             ],
                           ),
                            SizedBox(height: MediaQuery.of(context).size.height*.02,),
                            Row(
                              children: [
                                Text("Start At ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(m.mainColor),fontSize: 11),),
                                Text(" Fri12 October \\02:30 Pm",style: TextStyle(fontSize: 11),),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.access_time,size: 25,),
                                    SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                    Container(
                                      height: MediaQuery.of(context).size.height*.05,
                                      width: MediaQuery.of(context).size.width*.003,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                    Text("45 Min",style: TextStyle(fontSize: 12)),

                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.08,),
                                Text("(per Class)",style: TextStyle(color: Color(m.mainColor),fontSize: 11),)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.group,size: 25,),
                                    SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                    Container(
                                      height: MediaQuery.of(context).size.height*.05,
                                      width: MediaQuery.of(context).size.width*.003,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                    Text("8 Members",style: TextStyle(fontSize: 12)),

                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.08,),
                                Text("(Remaining 2)",style: TextStyle(color: Color(m.mainColor),fontSize: 10),)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                            Row(
                              children: [
                                Icon(Icons.location_on,size: 25,),
                                SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                Container(
                                  height: MediaQuery.of(context).size.height*.05,
                                  width: MediaQuery.of(context).size.width*.003,
                                  color: Colors.black,
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                Text(" Jeda,Sultan Hessen st,1546 2nd F",style: TextStyle(fontSize: 11)),

                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                            Row(
                              children: [
                                ImageIcon(AssetImage("images/cash.png"),size: 25,),
                                SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                Container(
                                  height: MediaQuery.of(context).size.height*.05,
                                  width: MediaQuery.of(context).size.width*.003,
                                  color: Colors.black,
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.03,),

                                Text(" 140",style: TextStyle(fontSize: 13)),

                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*.055,
                                  width: MediaQuery.of(context).size.width*.375,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color: Color(m.mainColor),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),

                                  child: FlatButton(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold)),
                                        Icon(Icons.close,size: 25,color: Colors.white,)
                                      ],
                                    ),
                                    onPressed:null,
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*.055,
                                  width: MediaQuery.of(context).size.width*.375,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color: Color(m.mainColor),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),

                                  child: FlatButton(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Map",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold)),
                                        Icon(Icons.location_on,size: 25,color: Colors.white,)
                                      ],
                                    ),
                                    onPressed:null,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

                          ],
                        )
                    ),


                  SizedBox(height: MediaQuery.of(context).size.height*.04,),
*/
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