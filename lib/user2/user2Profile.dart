import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class user2Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return user2ProfileState();
  }
}
class user2ProfileState extends State<user2Profile>{
  myApp m=new myApp();
  bool switch1=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
           myAppBar("My Profile"),
            SizedBox(  height: MediaQuery.of(context).size.height*.015,),
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.03,
                  right: MediaQuery.of(context).size.width*.03
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*.14,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(m.mainColor),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.25),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox( width: MediaQuery.of(context).size.width*.02,),
                            Image.asset('images/Ellipse 65.png',
                              height: MediaQuery.of(context).size.height*.12,
                              width: MediaQuery.of(context).size.height*.12,
                              fit: BoxFit.fill,),
                            SizedBox( width: MediaQuery.of(context).size.width*.03,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Ahmed Mohamed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white),),
                                SizedBox( height: MediaQuery.of(context).size.height*.005,),
                                Text("0996548512745",style: TextStyle(fontSize: 10,color: Colors.white)),
                                SizedBox( height: MediaQuery.of(context).size.height*.005,),
                                Text("Ahmed @mail.com",style: TextStyle(fontSize: 10,color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                        IconButton(icon: Icon(Icons.edit), onPressed: (){
                          Navigator.pushNamed(context, '/editProfile');
                        })
                      ],
                    ),

                  ),
                  SizedBox(  height: MediaQuery.of(context).size.height*.02,),
                  Container(
                    height: MediaQuery.of(context).size.height*.085,
                    width: MediaQuery.of(context).size.width,

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
                          color: Colors.grey.withOpacity(.1),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(child: Text("Notifiction",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          onTap: (){Navigator.pushNamed(context, '/notifiction');},
                        ),
                        Switch(
                          value: switch1,
                          onChanged: (v){
                            setState(() {
                              switch1=!switch1;
                            });
                          },
                          activeTrackColor: Color(m.mainColor),
                          activeColor: Colors.white,
                          inactiveTrackColor: Colors.black26,
                          inactiveThumbColor: Colors.white,

                        ),

                      ],
                    ),

                  ),


                  SizedBox(  height: MediaQuery.of(context).size.height*.02),
                  GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height*.085,
                      width: MediaQuery.of(context).size.width,

                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width*.04,
                        left: MediaQuery.of(context).size.width*.04,
                      ),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.1),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(3, 3), // changes position of shadow
                          ),
                        ],
                      ),

                      child:
                          Text("My Questionnaire",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),




                    ),
                    onTap: (){Navigator.pushNamed(context, '/myQuestionaire');},
                  ),
                  SizedBox(  height: MediaQuery.of(context).size.height*.02),
                  GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height*.085,
                      width: MediaQuery.of(context).size.width,
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
                            color: Colors.grey.withOpacity(.1),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(3, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text("Appointments",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                        ],
                      ),

                    ),
                    onTap: (){Navigator.pushNamed(context, '/404');},
                  ),
                  SizedBox(  height: MediaQuery.of(context).size.height*.02,),
                  GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height*.085,
                      width: MediaQuery.of(context).size.width,
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
                            color: Colors.grey.withOpacity(.1),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(3, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text("Contacts",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                        ],
                      ),

                    ),
                    onTap: (){Navigator.pushNamed(context, '/contacts');},
                  ),
                  SizedBox(  height: MediaQuery.of(context).size.height*.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Log Out  ",style: TextStyle(fontSize: 16,color: Color(m.mainColor)),),
                      Icon(Icons.logout,color: Color(m.mainColor))
                    ],
                  )

                ],
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
                  Navigator.pushNamed(context, '/user2Main');
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