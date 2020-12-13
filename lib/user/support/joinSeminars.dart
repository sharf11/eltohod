import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class joinSeminar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return joinSeminarState();
  }
}

class joinSeminarState extends State<joinSeminar> {
  myApp m = new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: Column(
            children: [
              myAppBar("Seminars"),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .04,
                        left: MediaQuery.of(context).size.width * .04,
                      ),
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .03,
                        left: MediaQuery.of(context).size.width * .03,
                        top: MediaQuery.of(context).size.height*.015
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(m.mainColor),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(.1),
                            spreadRadius: 4,
                            blurRadius: 9,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .01,
                          ),
                          Text(
                            " Room Title Here",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: "Poppins-ExtraBold"),
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .01,
                          ),
                          Text(
                            "              the main contact for your providers, other than yourself. Your other support person(s) also have 24-hour access to you but are not a contact for your health care providers. In most cases, support person(s) are chosen because of the trust they have with a patient and his/her ability to fulfill the roles and responsibilities described below.The main role of a support person is to help their loved one heal through support, encouragement and communication during their stay at Strong Memorial Hospital. Because of the importance ",
                            style: TextStyle(
                                fontSize: 10, color: Colors.white),textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .02,
                          ),
                        ],
                      ),
                    ),

                    Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * .03,
                            left: MediaQuery.of(context).size.width * .03,
                            top: MediaQuery.of(context).size.height*.02
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(.1),
                              spreadRadius: 4,
                              blurRadius: 9,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width*.04,
                          right:  MediaQuery.of(context).size.width*.04,
                          top: MediaQuery.of(context).size.height*.02,
                          bottom: MediaQuery.of(context).size.height*.02,
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
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
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
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
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
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
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
                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
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

                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

                          ],
                        )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.03,),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height*.045,
                        width: MediaQuery.of(context).size.width*.45,
                        margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width*.22,
                          left: MediaQuery.of(context).size.width*.22,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
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
                          Text("Join",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: ("Poppins-Medium"))),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  ],
                ),
              )
            ],
          ),
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
