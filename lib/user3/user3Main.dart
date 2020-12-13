import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../main.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shared_preferences/shared_preferences.dart';
class user3Main extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return user3MainState();
  }
}
class  user3MainState extends State<user3Main>{
  myApp m=new myApp();
  int selectedServces = 0;
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
    return Scaffold(
      body: Container(
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
                      top: MediaQuery.of(context).size.height * .015,
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
                              'images/appointment.png',
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
                                    "See Today Reservations",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
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

                            child: Text("See Now",
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold)),


                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/reservation');
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

                  top: MediaQuery.of(context).size.height * .015),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: MediaQuery.of(context).size.height * .17,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width *
                                .21,
                            margin: EdgeInsets.only(

                                left: lang=='ar'? MediaQuery.of(context).size.width * .01:MediaQuery.of(context).size.width * .08,
                                right: lang=='ar'? MediaQuery.of(context).size.width * .08:MediaQuery.of(context).size.width * .01,
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
                                      .20,
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
                                        .09,
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
                                .21,
                            margin: EdgeInsets.only(
                                right: MediaQuery.of(context)
                                    .size
                                    .width *
                                    .01,
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
                                        .09,
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
                                .21,
                            margin: EdgeInsets.only(
                                right: MediaQuery.of(context)
                                    .size
                                    .width *
                                    .01,
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
                                      .20,
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
                                        .09,
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
                                .21,
                            margin: EdgeInsets.only(
                                right: MediaQuery.of(context)
                                    .size
                                    .width *
                                    .01,
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
                                      .20,
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
                                    'images/questionnaire11.png',
                                    height: MediaQuery.of(context)
                                        .size
                                        .height *
                                        .04,
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        .09,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context)
                                      .size
                                      .height *
                                      .005,
                                ),
                                Text(
                                  "Questionnaire",
                                  style: TextStyle(fontSize: 9.2),
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
                                context, '/404');
                          },
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .005,
                  ),
                  Container(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width*.08,
                        left: MediaQuery.of(context).size.width * .08,
                      ),
                      child: Text("Most Recommended Books",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),



                ],
              ),
            ),
            Expanded(
              child:  GridView.builder(
                padding: EdgeInsets.only(
                  top: 0,
                  right: MediaQuery.of(context).size.width*.08,
                  left: MediaQuery.of(context).size.width * .08,
                ),
                primary: false,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: 1.1/1.5
                ),
                itemBuilder: (context,index){
                  return  Image.asset('images/Search Field.png',fit: BoxFit.cover,);
                },
                itemCount:24,

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
                  //Navigator.pushNamed(context, '/user3Main');
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
                  Navigator.pushNamed(context, '/user3Profile');
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