import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class map extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return mapState();
  }
}
class mapState extends State<map>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
           myAppBar("Map"),
            Expanded(
              child: Stack(
                children: [
                 Container(
              width: MediaQuery.of(context).size.width,
                   child: Image.asset("images/map.png",width:MediaQuery.of(context).size.width,
                       fit: BoxFit.fill,
                     ),
                 ),

                  Positioned(
                    top: MediaQuery.of(context).size.height*.37,
                    left: MediaQuery.of(context).size.width*.15,
                    child: Container(
                      height: MediaQuery.of(context).size.height * .33,
                      width: MediaQuery.of(context).size.width*.7,
                      child: Stack(
                        children: [
                          Positioned(
                            top: MediaQuery.of(context).size.height * .12,
                            child: Container(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height*.01
                            ),
                              width: MediaQuery.of(context).size.width*.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(.1),
                                    spreadRadius: 4,
                                    blurRadius: 9,
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
                                        .007,
                                  ),
                                  Text(
                                    "Specialist At Autism for children",
                                    style: TextStyle(fontSize: 6),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .005,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,color: Color(m.mainColor),size: 10,),
                                      Icon(Icons.star,color: Color(m.mainColor),size: 10,),
                                      Icon(Icons.star,color: Color(m.mainColor),size: 10,),
                                      Icon(Icons.star_border,color: Color(m.mainColor),size: 10,),
                                      Icon(Icons.star_border,color: Color(m.mainColor),size: 10,),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .01,
                                  ),
                                  Text(
                                    "Specialist At Autism for children",
                                    style: TextStyle(fontSize: 6),
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
                            left: MediaQuery.of(context).size.width * .26,
                            top: MediaQuery.of(context).size.height*.065,
                            child: Container(
                                width: MediaQuery.of(context).size.width * .18,
                                height: MediaQuery.of(context).size.width * .18,
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
                  )
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