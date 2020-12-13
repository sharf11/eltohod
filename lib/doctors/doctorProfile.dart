import 'package:eltohod/doctors/map.dart';
import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../myAppBar.dart';

class doctorProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return doctorProfileState();
  }
}

class doctorProfileState extends State<doctorProfile> {
  myApp m = new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            myAppBar("Doctor Profile"),
            Container(
              height: MediaQuery.of(context).size.height * .755,
              child: SingleChildScrollView(
                child: Column(
                children: [
                  SizedBox( height: MediaQuery.of(context).size.height * .015,),
                  Container(
                    height: MediaQuery.of(context).size.height * .35,
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .035,
                      right: MediaQuery.of(context).size.width * .035,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: MediaQuery.of(context).size.height * .086,
                          child: Container(

                            width: MediaQuery.of(context).size.width * .93,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .05,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Doctor ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "Ahmed Mansour",
                                        style: TextStyle(
                                            fontSize: 10,
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
                                    style: TextStyle(fontSize: 8),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .015,
                                  ),
                                  Text(
                                    "Salivary gland surgery, Reconstructive middle surgery, ",
                                    style: TextStyle(fontSize: 8),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          "surgery, Balloon sinuplasty, Stapedectomy.. ",
                                          style: TextStyle(fontSize: 8)),
                                      Text(
                                        "More",
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Color(m.mainColor),decoration: TextDecoration.underline),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .015,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,size: 11,),
                                      Icon(Icons.star,size: 11,),
                                      Icon(Icons.star,size: 11,),
                                      Icon(Icons.star_border,size: 11,),
                                      Icon(Icons.star_border,size: 11,),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .015,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          ImageIcon(AssetImage("images/cash.png"),size: 20,),
                                         Row(
                                           children: [
                                             SizedBox(width: MediaQuery.of(context).size.width*.07,),
                                             Text(
                                               "140",
                                               style: TextStyle(
                                                 fontSize: 8,
                                               ),
                                             ),
                                             SizedBox(width: MediaQuery.of(context).size.width*.025,),
                                             Text(
                                               "(In Door)",
                                               style: TextStyle(
                                                 fontSize: 8,
                                               ),
                                             )
                                           ],
                                         )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "100",
                                            style: TextStyle(
                                              fontSize: 8,
                                            ),
                                          ),
                                          SizedBox(width: MediaQuery.of(context).size.width*.025,),
                                          Text(
                                            "(Online)",
                                            style: TextStyle(
                                              fontSize: 8,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .015,
                                  ),
                                ],
                              ),

                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * .33,
                          top: MediaQuery.of(context).size.height*.015,
                          child: Container(
                              width: MediaQuery.of(context).size.width * .22,
                              height: MediaQuery.of(context).size.width * .22,
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
                  Container(
                    //height: MediaQuery.of(context).size.height * .35,

                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .03,
                      right: MediaQuery.of(context).size.width * .03,
                      top: MediaQuery.of(context).size.height * .01,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
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
                      top: MediaQuery.of(context).size.height*.01,
                      bottom: MediaQuery.of(context).size.height*.02
                    ),
                    child:  Container(
                       // height: MediaQuery.of(context).size.height * .35,
                       // width: MediaQuery.of(context).size.width ,
                     // color: Colors.red,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: MediaQuery.of(context).size.width*.08,),
                                Icon(
                                  Icons.location_on,
                                  size: 25,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*.78 ,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " Jeda ,sultan HEssien st,1546ndF",
                                        style: TextStyle(fontSize: 8.5),
                                      ),
                                      Text(
                                        "book now and you will recieve full address details and clinic runs",
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.justify,
                                        overflow: TextOverflow.visible,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),

                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                            Container(
                            width: MediaQuery.of(context).size.width*.05,
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width*.001,
                              ),
                            child:
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Color(m.mainColor),
                                  ),
                                  ),
                                  Container(
                                      height: MediaQuery.of(context).size.height *
                                          .2,
                                      width: MediaQuery.of(context).size.width*.84,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),

                                      ),
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 4,
                                        itemBuilder: (context,index){
                                          return  Container(
                                            margin: EdgeInsets.only(
                                              top: MediaQuery.of(context).size.height*.01,
                                              bottom:  MediaQuery.of(context).size.height*.01,
                                            ),

                                            padding: EdgeInsets.only(
                                                left:index==0? MediaQuery.of(context).size.width*.01:0,
                                                right: MediaQuery.of(context).size.width*.02,
                                              //top: MediaQuery.of(context).size.height*.01,
                                              //bottom:  MediaQuery.of(context).size.height*.01,
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                      .03,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .261,
                                                  alignment:
                                                  Alignment.center,
                                                  margin: EdgeInsets.zero,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(10),
                                                          topLeft: Radius
                                                              .circular(
                                                              10)),
                                                      color:
                                                      Color(m.mainColor),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black12.withOpacity(.05),
                                                        spreadRadius: 3,
                                                        blurRadius: 2,
                                                        offset: Offset(3, 3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: Text("Today",style: TextStyle(fontSize: 10,fontFamily: 'Poppins-SemiBold'),),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                      .12,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .261,
                                                  alignment:
                                                  Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color:Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black12.withOpacity(.05),
                                                        spreadRadius: 3,
                                                        blurRadius: 2,
                                                        offset: Offset(3, 3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [


                                                      Text(
                                                        "12:00 Pm",
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                      Text(
                                                        "to",
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                      Text(
                                                        "5:00 Pm",
                                                        style: TextStyle(
                                                           fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                      .03,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .261,
                                                  alignment:
                                                  Alignment.center,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                          Radius
                                                              .circular(
                                                              10),
                                                          bottomLeft: Radius
                                                              .circular(
                                                              10)),
                                                      color: index==0?Colors.red:Colors.black26,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black12.withOpacity(.05),
                                                        spreadRadius: 3,
                                                        blurRadius: 2,
                                                        offset: Offset(3, 3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: InkWell(child: Text("Book",style: TextStyle(color:Colors.white,fontSize: 10,fontFamily: "Poppins-SemiBold")),
                                                    onTap: (){Navigator.pushNamed(context, '/details');},),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                 Container(
                                   width: MediaQuery.of(context).size.width*.05,
                                   alignment: Alignment.centerRight,

                                   child:
                                   Icon(
                                     Icons.arrow_forward_ios,
                                     color: Color(m.mainColor),
                                   ),

                                 )
                                ],
                              ),

                          ],
                        ),
                      ),

                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .05,
                       right: MediaQuery.of(context).size.width * .05

                    ),
                    child: Row(
                      children: [
                        Text(
                          "Reviews ",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.star,size: 14,),
                        Icon(Icons.star,size: 14,),
                        Icon(Icons.star,size: 14,),
                        Icon(Icons.star_border,size: 14,),
                        Icon(Icons.star_border,size: 14,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * .18,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0)),


                      ),
                      padding: EdgeInsets.only(

                      ),
                      child:ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return  Container(
                            width: MediaQuery.of(context).size.width * .80,
                            margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .03,
                              right: MediaQuery.of(context).size.width * .03,
                              top: MediaQuery.of(context).size.height * .01,
                              bottom: MediaQuery.of(context).size.height * .01,
                            ),
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .03,
                              right: MediaQuery.of(context).size.width * .03

                            ),
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
                            child: Column(
                              children: [
                                SizedBox(height: MediaQuery.of(context).size.height*.007,),
                                Row(
                                  children: [
                                    Icon(Icons.star,size:12,),
                                    Icon(Icons.star,size: 12,),
                                    Icon(Icons.star,size: 12,),
                                    Icon(Icons.star_border,size: 12,),
                                    Icon(Icons.star_border,size: 12,),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*.015,),
                                Text(
                                  "Very good doctor with on experience and proficiently",
                                  style: TextStyle(
                                      fontSize: 10,),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Noor" ,style: TextStyle(
                                          fontSize: 8,)),
                                        Text("10 januarary 2020 ",style: TextStyle(
                                          fontSize: 8,))
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*.007,),
                              ],
                            ),
                          );
                        },
                      )
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                ],
              ),)
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
