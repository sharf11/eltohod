import 'package:eltohod/EnterApp/EnterPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';


class user2Main extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return user2MainState();
  }
}
class  user2MainState extends State<user2Main>{
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
                              'images/questionnaire.png',
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
                                    "Make your Questionnaire",
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

                            child: Text(translator.translate('startBtn'),
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold)),


                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/questionaireDetails');
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
                  right: MediaQuery.of(context).size.width*.08,
                  left: MediaQuery.of(context).size.width * .08,
                  top: 0,
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