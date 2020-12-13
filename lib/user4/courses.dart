import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class courses extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return coursesState();
  }
  
}
class coursesState extends State<courses>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            myAppBar("Courses"),
            SizedBox(height: MediaQuery.of(context).size.height*.025,),
            Container(
              height: MediaQuery.of(context).size.height*.2,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.04,
                  right: MediaQuery.of(context).size.width*.04
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
              child: Column(
               children: [
                 Container(
                   height: MediaQuery.of(context).size.height*.09,
                   width: MediaQuery.of(context).size.width,

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
                   child:
                       Text("Course Title Here",style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),


                 ),
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height*.11,
                 alignment: Alignment.center,
                 child:   Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ImageIcon(AssetImage("images/group.png"),color:Colors.black,size: 25,),
                     SizedBox(width: MediaQuery.of(context).size.width*.03,),
                     Container(
                       height: 25,
                       width: 1,
                       color: Colors.black54,
                     ),
                     SizedBox(width: MediaQuery.of(context).size.width*.03,),

                     Text("8 Members",style: TextStyle(fontSize: 11)),
                     SizedBox(width: 20,),
                     Text("(Remaining 2)",style: TextStyle(color: Color(m.mainColor),fontSize: 11)),

                   ],
                 ),
               )
               ],
              ),

            ),
            SizedBox(height: MediaQuery.of(context).size.height*.025,),
            Container(
              height: MediaQuery.of(context).size.height*.2,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.04,
                  right: MediaQuery.of(context).size.width*.04
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
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*.09,
                    width: MediaQuery.of(context).size.width,

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
                    child:
                    Text("Course Title Here",style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),


                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*.11,
                    alignment: Alignment.center,
                    child:   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage("images/group.png"),color:Colors.black,size: 25,),
                        SizedBox(width: MediaQuery.of(context).size.width*.03,),
                        Container(
                          height: 25,
                          width: 1,
                          color: Colors.black54,
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*.03,),

                        Text("8 Members",style: TextStyle(fontSize: 11)),
                        SizedBox(width: 20,),
                        Text("(Remaining 2)",style: TextStyle(color: Color(m.mainColor),fontSize: 11)),

                      ],
                    ),
                  )
                ],
              ),

            ),
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