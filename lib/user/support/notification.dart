

import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notification extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return notificationState();
  }
}
class notificationState extends State<notification>{
  myApp m=new myApp();
  int counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .035,
                left: MediaQuery.of(context).size.width * .015,
                right: MediaQuery.of(context).size.width * .015
             ),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * .12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                color: Color(m.whiteMainColor)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: (){Navigator.pop(context);},
                ),
                Text(
                  "Notifiction",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                IconButton(icon: Icon(Icons.notifications),onPressed: (){
                  Navigator.pop(context);
                },)
              ],
            ),
          ),

          Expanded(
            child:  ListView.builder(
              padding: EdgeInsets.zero,
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
                    bottom: index==9?50:0,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.012,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Doctcor  AppointMent",style: TextStyle(fontSize: 13,fontFamily: ("Poppins-Medium"),color: Color(m.mainColor)),),
                            Container(
                                width: MediaQuery.of(context).size.width*.81,
                                child: Text("The main role of a support person is to help their loved one heal ",style: TextStyle(fontSize: 10,fontFamily: 'Poppins-SemiBold'))),
                            Text("1 day ago",style: TextStyle(fontSize: 11,fontFamily: ("Poppins-Medium"),color: Colors.black38),),
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
                        height: 1.5,
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