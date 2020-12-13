import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myAppBar.dart';

class myCourses extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return myCoursesState();
  }
}
class myCoursesState extends State<myCourses>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffdedede),
      body: Container(
        child: Column(
          children: [
           myAppBar("My Courses"),
            SizedBox(  height: MediaQuery.of(context).size.height*.015,),
            Container(

              child: Column(
                children: [
                  SizedBox(  height: MediaQuery.of(context).size.height*.015,),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*.12,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*.03,
                            right: MediaQuery.of(context).size.width*.03
                        ),
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width*.04,
                          left: MediaQuery.of(context).size.width*.04,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(m.mainColor),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(.2),
                                spreadRadius: 4,
                                blurRadius: 4,
                                offset: Offset(3, 3), // changes position of shadow
                              ),
                            ]
                        ),
                        child: Row(
                          children: [
                            Text("Course 1",style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                          ],
                        ),

                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*.025,
                        left: MediaQuery.of(context).size.width*.55,
                        child: GestureDetector(
                          child: Container(
                          height: MediaQuery.of(context).size.height*.07,
                          width: MediaQuery.of(context).size.width*.35,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(.1),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ]
                          ),
                          alignment: Alignment.center,
                          child:
                              Text("See Details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),




                      ),
                          onTap: (){Navigator.pushNamed(context, '/courses');},
                        ),
                      )
                    ],
                  ),
                  SizedBox(  height: MediaQuery.of(context).size.height*.025,),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*.12,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*.03,
                            right: MediaQuery.of(context).size.width*.03
                        ),
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width*.04,
                          left: MediaQuery.of(context).size.width*.04,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(.2),
                                spreadRadius: 4,
                                blurRadius: 4,
                                offset: Offset(3, 3), // changes position of shadow
                              ),
                            ]
                        ),
                        child: Row(
                          children: [
                            Text("Course 2",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                          ],
                        ),

                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*.025,
                        left: MediaQuery.of(context).size.width*.55,
                        child: Container(
                          height: MediaQuery.of(context).size.height*.07,
                          width: MediaQuery.of(context).size.width*.35,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(.1),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ]
                          ),
                          alignment: Alignment.center,
                          child:
                          Text("See Details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),




                        ),
                      )
                    ],
                  ),

                ],
              ),
            )
          ],
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
                   Navigator.pushNamed(context, '/user4Main');
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
                  Navigator.pushNamed(context, '/user4Profile');
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