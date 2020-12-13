

import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class user2Notification extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return user2NotificationState();
  }
}
class user2NotificationState extends State<user2Notification>{
  myApp m=new myApp();
  int counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*.05,
                left: MediaQuery.of(context).size.width*.05,
                right: MediaQuery.of(context).size.width*.05
            ),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*.12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight:  Radius.circular(15)
                ),
                color: Color(m.whiteMainColor)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios,),
                Text("Notifiction",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Icon(Icons.notifications)
              ],
            ),
          ),
          SizedBox(  height: MediaQuery.of(context).size.height*.03,),

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              right: MediaQuery.of(context).size.width*.03,
              left: MediaQuery.of(context).size.width*.03,
            ),
            child:  ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white
                  ),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*.05,
                    right: MediaQuery.of(context).size.width*.05,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Question 1",style: TextStyle(fontSize: 16,color: Color(m.mainColor)),),
                              Container(
                                  width: MediaQuery.of(context).size.width*.81,
                                  child: Text("The main role of a support person is to help their loved one heal ")),
                              Text("1 day ago",style: TextStyle(fontSize: 13,color: Colors.black38),),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width*.025,
                            width: MediaQuery.of(context).size.width*.025,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Color(m.mainColor),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      Container(
                        height: MediaQuery.of(context).size.height*.003,
                        color: Colors.black54,
                      )
                    ],
                  ),
                );
              },
              itemCount:10,

            ),
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        showUnselectedLabels: true,
        elevation: 0,
        unselectedItemColor: Colors.black26,
        iconSize: 35,
        selectedItemColor: Color(m.mainColor),
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                autofocus: false,
                color: Colors.black,
                onPressed:(){Navigator.pushNamed(context, '/setting');},
                icon: Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 5),
              )),
          BottomNavigationBarItem(
              icon: IconButton(
                autofocus: false,
                color: Colors.black,
                onPressed: (){Navigator.pushNamed(context, '/homePage');},
                icon: Icon(Icons.home, size: 40, color: Color(m.mainColor)),
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 5),
              )),
          BottomNavigationBarItem(
              icon: IconButton(
                autofocus: false,
                color: Colors.black,
                onPressed:(){Navigator.pushNamed(context, '/signIn');},
                icon: Icon(Icons.person, size: 40, color: Colors.black),
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