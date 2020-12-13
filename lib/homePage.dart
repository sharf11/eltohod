import 'package:eltohod/EnterApp/EnterPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'main.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homePageState();
  }
}

class homePageState extends State<homePage> {
  int selectedServces = 0;
  myApp m = new myApp();
  String lang = "";
  loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      lang = prefs.get('lang');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Directionality(
            textDirection: lang=='ar'?TextDirection.rtl:TextDirection.ltr,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height <=
                                    MediaQuery.of(context).size.width
                                ? MediaQuery.of(context).size.height * .45
                                : MediaQuery.of(context).size.height * .36,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: Colors.white,

                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * .30,
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.topCenter,
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .06,
                                  left:lang=='ar'? MediaQuery.of(context).size.width * .05:MediaQuery.of(context).size.width * .08,
                                  right:lang=='ar'? MediaQuery.of(context).size.width * .08:MediaQuery.of(context).size.width * .05),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  color: Color(m.whiteMainColor)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    translator.translate('mainTitle'),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    child: IconButton(icon:ImageIcon(AssetImage("images/bell.png"),size: 30,),
                                      onPressed: (){Navigator.pushNamed(context, '/notifiction');},
                                    ),
                                  )
                                ],
                              )),
                          Positioned(
                            top: MediaQuery.of(context).size.height >
                                    MediaQuery.of(context).size.width
                                ? MediaQuery.of(context).size.height * .1380
                                : MediaQuery.of(context).size.height * .150,
                            left: MediaQuery.of(context).size.width * .08,
                            child: Container(
                              height: MediaQuery.of(context).size.height >
                                      MediaQuery.of(context).size.width
                                  ? MediaQuery.of(context).size.height * .22
                                  : MediaQuery.of(context).size.height * .27,
                              width: MediaQuery.of(context).size.width * .84,
                              padding: EdgeInsets.only(
                               left: MediaQuery.of(context).size.width*.03,
                               right: MediaQuery.of(context).size.width*.03,
                                top: MediaQuery.of(context).size.height * .01,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
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

                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'images/text.png',
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .25,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .12,
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width*.015,),
                                      Container(
                                        width:
                                        MediaQuery.of(context).size.width *
                                            .45,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              translator.translate('autismTest'),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .015,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width*.5,
                                              child: Text(translator.translate('main1Text'),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  )),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .005,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  InkWell(
                                    child: Container(
                                      height: MediaQuery.of(context).size.height *
                                          .045,
                                      width:
                                          MediaQuery.of(context).size.width * .5,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Colors.white),

                                        child: Text(translator.translate('startBtn'),
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.bold)),


                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/startTest');
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .000000001,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            
                            top: MediaQuery.of(context).size.height * .02),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                                alignment:lang=='ar'? Alignment.topRight:Alignment.topLeft,
                                padding: EdgeInsets.only(
                                  right: MediaQuery.of(context).size.width*.08,
                                  left: MediaQuery.of(context).size.width * .08,
                                ),
                                child: Text(
                                  translator.translate('ourServices'),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                            Container(
                              margin: EdgeInsets.only(
                                 // top: MediaQuery.of(context).size.height * .015,
                              
                                 ),
                              height: MediaQuery.of(context).size.height * .165,
                              width: MediaQuery.of(context).size.width,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width *
                                          .18,
                                      margin: EdgeInsets.only(

                                          left: lang=='ar'? MediaQuery.of(context).size.width * .03:MediaQuery.of(context).size.width * .08,
                                          right: lang=='ar'? MediaQuery.of(context).size.width * .08:MediaQuery.of(context).size.width * .03,
                                               top: MediaQuery.of(context).size.height * .015
                                              ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .10,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .18,
                                            padding: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .015),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: selectedServces == 0
                                                  ? Color(m.mainColor)
                                                  : Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:  selectedServces == 0
                                                ? Colors.grey.withOpacity(.2):Colors.black12.withOpacity(.05),
                                                  spreadRadius: 4,
                                                  blurRadius: 4,
                                                  offset: Offset(3, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Image.asset(
                                              'images/services/Path 338.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .05,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .005,
                                          ),
                                          Text(
                                            translator.translate('Library'),
                                            style: TextStyle(fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        selectedServces = 0;
                                      });
                                      Navigator.pushNamed(context, '/library');
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .18,
                                      margin: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .03,
                                               top: MediaQuery.of(context).size.height * .015
                                              ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .1,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .18,
                                            padding: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .015),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: selectedServces == 1
                                                  ? Color(m.mainColor)
                                                  : Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:  selectedServces == 1
                                                      ? Colors.grey.withOpacity(.2):Colors.black12.withOpacity(.05),
                                                  spreadRadius: 5,
                                                  blurRadius: 4,
                                                  offset: Offset(3, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Image.asset(
                                              'images/services/help.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .045,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .005,
                                          ),
                                          Text(
                                            translator.translate('supportRooms'),
                                            style: TextStyle(fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        selectedServces = 1;
                                      });
                                      Navigator.pushNamed(
                                          context, '/supportRooms');
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .18,
                                      margin: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .03,
                                               top: MediaQuery.of(context).size.height * .015
                                              ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .10,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .18,
                                            padding: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .015),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: selectedServces == 2
                                                  ? Color(m.mainColor)
                                                  : Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:  selectedServces == 2
                                                      ? Colors.grey.withOpacity(.2):Colors.black12.withOpacity(.05),
                                                  spreadRadius: 4,
                                                  blurRadius: 4,
                                                  offset: Offset(3, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Image.asset(
                                              'images/services/XMLID_1423_.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .05,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .005,
                                          ),
                                          Text(
                                            translator.translate('Seminars'),
                                            style: TextStyle(fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        selectedServces = 2;
                                      });
                                      Navigator.pushNamed(context, '/seminars');
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .19,
                                      margin: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .03,
                                               top: MediaQuery.of(context).size.height * .015
                                              ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .10,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .18,
                                            padding: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .009),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: selectedServces == 3
                                                  ? Color(m.mainColor)
                                                  : Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:  selectedServces == 3
                                                      ? Colors.grey.withOpacity(.5):Colors.black12.withOpacity(.05),
                                                  spreadRadius: 4,
                                                  blurRadius: 4,
                                                  offset: Offset(3, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Image.asset(
                                              'images/services/booking.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .04,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .005,
                                          ),
                                          Text(
                                              translator.translate('onlineReservation'),
                                            style: TextStyle(fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        selectedServces = 3;
                                      });
                                      Navigator.pushNamed(
                                          context, '/searchDectors');
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .18,
                                      margin: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .03,
                                               top: MediaQuery.of(context).size.height * .015),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .10,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .18,
                                            padding: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .015),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: selectedServces == 4
                                                  ? Color(m.mainColor)
                                                  : Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:  selectedServces == 4
                                                      ? Colors.grey.withOpacity(.5):Colors.black12.withOpacity(.05),
                                                  spreadRadius: 4,
                                                  blurRadius: 4,
                                                  offset: Offset(3, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Image.asset(
                                              'images/services/support.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .05,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .005,
                                          ),
                                          Text(
                                            translator.translate('onlineDoctor'),
                                            style: TextStyle(fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        selectedServces = 4;
                                      });
                                      Navigator.pushNamed(
                                          context, '/onlineDectors');
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .005,
                            ),
                            Container(
                                alignment:lang=='ar'? Alignment.topRight:Alignment.topLeft,
                                padding: EdgeInsets.only(
                                  right: MediaQuery.of(context).size.width*.08,
                                   left: MediaQuery.of(context).size.width * .08,
                                ),
                                child: Text(
                                  translator.translate('recommendedDectors'),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                            Container(
                              margin: EdgeInsets.only(

                                  ),
                              height: MediaQuery.of(context).size.height >
                                      MediaQuery.of(context).size.width
                                  ? MediaQuery.of(context).size.height * .26
                                  : MediaQuery.of(context).size.height * .35,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width * .65,
                                    margin: EdgeInsets.only(
                                        left: lang=='ar'? MediaQuery.of(context).size.width * .025:index==0?MediaQuery.of(context).size.width * .08:0,
                                        right: lang=='ar'? index==0?MediaQuery.of(context).size.width * .08:0:MediaQuery.of(context).size.width * .025,
                                         top: MediaQuery.of(context).size.height *
                                      .02

                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                             Container(
                                               decoration: BoxDecoration(
                                      border: Border.all(width: 2.0,color: Colors.grey.withOpacity(.05)),
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
                                                   padding: EdgeInsets.only(
                                                     top: MediaQuery.of(context).size.height*.005,
                                                     bottom:MediaQuery.of(context).size.height*.005,
                                                   ),
                                                   decoration: BoxDecoration(
                                                     borderRadius: BorderRadius
                                                         .all(Radius
                                                         .circular(
                                                         10)),
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
                                                   child: Row(
                                                     children: [
                                                       SizedBox(width: 2,),
                                                       Container(
                                                         padding: EdgeInsets.only(
                                                           left: MediaQuery.of(context).size.width * .015,
                                                           right: MediaQuery.of(context).size.width * .015,
                                                           bottom: MediaQuery.of(context).size.height * .002,
                                                           top: MediaQuery.of(context).size.height * .002,
                                                         ),
                                                         child: Image.asset(
                                                           "images/Ellipse 43.png",
                                                           height: MediaQuery.of(context)
                                                               .size
                                                               .height *
                                                               .085,
                                                           width:MediaQuery.of(context)
                                                               .size
                                                               .height *
                                                               .085,
                                                           fit: BoxFit.fill,
                                                         ),
                                                       ),
                                                       SizedBox(width: 5,),
                                                       Column(
                                                         crossAxisAlignment:
                                                         CrossAxisAlignment.start,
                                                         children: [
                                                           Row(
                                                             children: [
                                                               Text(
                                                                 translator.translate('Doctor'),
                                                                 style: TextStyle(
                                                                     fontSize: 10),
                                                               ),
                                                               Text( translator.translate('Ahmed'),
                                                                   style: TextStyle(
                                                                       fontSize: 10,
                                                                       fontWeight:
                                                                       FontWeight
                                                                           .bold)),
                                                             ],
                                                           ),
                                                           SizedBox(height: MediaQuery.of(context).size.height*.0085,),
                                                           Text(
                                                             translator.translate('special'),
                                                             style: TextStyle(
                                                                 fontSize: 8),
                                                           ),
                                                           SizedBox(height: MediaQuery.of(context).size.height*.0085,),
                                                           Row(
                                                             children: [
                                                               Row(
                                                                 children: [
                                                                   Icon(
                                                                     Icons.star,
                                                                     size: 9,
                                                                   ),
                                                                   Icon(
                                                                     Icons.star,
                                                                     size: 9,
                                                                   ),
                                                                   Icon(
                                                                     Icons.star,
                                                                     size: 9,
                                                                   ),
                                                                   Icon(
                                                                     Icons.star_border,
                                                                     size: 9,
                                                                   ),
                                                                   Icon(
                                                                     Icons.star_border,
                                                                     size: 9,
                                                                   ),
                                                                 ],
                                                               ),
                                                               Container(
                                                                 width: MediaQuery.of(
                                                                     context)
                                                                     .size
                                                                     .width *
                                                                     .05,
                                                               ),
                                                               Text(
                                                                 translator.translate('visitor'),
                                                                 style: TextStyle(
                                                                     fontSize: 7),
                                                               ),
                                                             ],
                                                           )
                                                         ],
                                                       )
                                                     ],
                                                   ),
                                                 ),
                                                  SizedBox(height: 3,),
                                                  Container(

                                                    padding: EdgeInsets.only(
                                                      left: MediaQuery.of(context).size.width*.02,
                                                      right: MediaQuery.of(context).size.width*.02,
                                                      top: MediaQuery.of(context).size.height*.01,
                                                      bottom:  MediaQuery.of(context).size.height*.02,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.location_on,
                                                              size: 15,
                                                            ),
                                                            SizedBox(width: MediaQuery.of(context).size.width*.01,),
                                                            Text(
                                                              translator.translate('location'),
                                                              style: TextStyle(
                                                                  fontSize: 8),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                                        Row(
                                                          children: [
                                                            ImageIcon(AssetImage("images/cash.png"),size: 15,),
                                                            SizedBox(width: MediaQuery.of(context).size.width*.01,),
                                                            Text(
                                                              translator.translate('price'),
                                                              style: TextStyle(
                                                                  fontSize: 8),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                                        Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                          children: [
                                                            InkWell(
                                                                child: Container(
                                                                  height: MediaQuery.of(
                                                                      context)
                                                                      .size
                                                                      .height *
                                                                      .025,
                                                                  width: MediaQuery.of(
                                                                      context)
                                                                      .size
                                                                      .width *
                                                                      .25,
                                                                  alignment:
                                                                  Alignment.center,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius
                                                                        .all(Radius
                                                                        .circular(
                                                                        10)),
                                                                    color: Colors.white,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color:Colors.black12.withOpacity(.05),
                                                                        spreadRadius: 4,
                                                                        blurRadius: 4,
                                                                        offset: Offset(3, 3), // changes position of shadow
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  child: Text(
                                                                      translator.translate("bookNow"),
                                                                      style: TextStyle(
                                                                          fontSize: 8,
                                                                      )),
                                                                ),
                                                                onTap: () {
                                                                  Navigator.pushNamed(
                                                                      context,
                                                                      '/bookingDetails');
                                                                }),
                                                            InkWell(
                                                                child: Container(
                                                                  height: MediaQuery.of(
                                                                      context)
                                                                      .size
                                                                      .height *
                                                                      .025,
                                                                  width: MediaQuery.of(
                                                                      context)
                                                                      .size
                                                                      .width *
                                                                      .25,
                                                                  alignment:
                                                                  Alignment.center,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius
                                                                        .all(Radius
                                                                        .circular(
                                                                        10)),
                                                                    color: Color(
                                                                        m.mainColor),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color:Colors.grey.withOpacity(.1),
                                                                        spreadRadius: 4,
                                                                        blurRadius: 4,
                                                                        offset: Offset(3, 3), // changes position of shadow
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  child: Text(
                                                                      translator.translate("onlineBooking"),
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize: 8,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                                ),
                                                                onTap: () {
                                                                  Navigator.pushNamed(
                                                                      context,
                                                                      '/onlineBookingDetails');
                                                                }),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),


                                                ],
                                              ),
                                            ),


                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              bottomNavigationBar:  BottomNavigationBar(
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
                        //  Navigator.pushNamed(context, '/homePage');
                        },
                        icon: ImageIcon(AssetImage("images/home.png"),color:Color(m.mainColor),size: 40,),
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
            ));
      },
    );
  }
}
