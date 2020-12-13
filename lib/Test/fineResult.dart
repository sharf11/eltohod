import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myAppBar.dart';

class result extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return resultState();
  }
}
class resultState extends State<result>{
  myApp m=new myApp();
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
                  right: MediaQuery.of(context).size.width * .015),
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
                    onPressed: (){Navigator.pushNamed(context, '/homePage');},
                  ),
                  Text(
                    "Diagnostic Test",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  IconButton(icon: Icon(Icons.notifications),onPressed: (){
                    Navigator.pushNamed(context, '/notifiction');
                  },)
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.04,),


            Container(
                width: MediaQuery.of(context).size.width*.8,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(m.mainColor),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(3, 3), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width*.05,
                  left: MediaQuery.of(context).size.width*.05,
                  top: MediaQuery.of(context).size.height*.035,
                  bottom: MediaQuery.of(context).size.height*.035,
                ),

                child: Text("The Result Is Normal Your Your Child Is Fine ",style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)


            ),
            SizedBox(height: MediaQuery.of(context).size.height*.05,),

            Container(
                width: MediaQuery.of(context).size.width*.8,
                child: Text("but you canto our library to read and watch videos about autism And what are the factors that lead to autism",
                  style: TextStyle(color:Colors.black,fontSize: 15,),textAlign: TextAlign.center,)),
            SizedBox(height: MediaQuery.of(context).size.height*.08,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height*.05,
                width: MediaQuery.of(context).size.width*.5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(m.mainColor),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(3, 3), // changes position of shadow
                    ),
                  ],
                ),

                child:  Text("Library",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: "Poppins-Medium")),

              ),
              onTap: (){Navigator.pushNamed(context, '/autismResult');},
            ),


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