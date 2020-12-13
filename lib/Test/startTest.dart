import 'package:eltohod/EnterApp/EnterPage.dart';
import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class startTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return startTestState();
  }
}
class startTestState extends State<startTest>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(

          children: [
            myAppBar("Diagnostic Test"),
            SizedBox(height: MediaQuery.of(context).size.height*.065,),
            Container(
              width: MediaQuery.of(context).size.width*.8,
              alignment: Alignment.center,
              child:Column(children: [
                Text("Please read the instructions before talking the test",
                  style: TextStyle(fontSize: 17,fontFamily: ("Poppins-Medium")),textAlign: TextAlign.center,),
                ],)),


            Container(
              padding: EdgeInsets.only(
                 // top: MediaQuery.of(context).size.height*.08,
                  left: MediaQuery.of(context).size.width*.1,
                  right: MediaQuery.of(context).size.width*.1
              ),
              alignment: Alignment.center,

               child:Column(
             children: [
               SizedBox(height: MediaQuery.of(context).size.height*.03,),
               Text("1- You have to answer series of 20 questions about your child's behavour",
               style: TextStyle(fontSize: 15,color:Colors.black87),),
               SizedBox(height: MediaQuery.of(context).size.height*.03,),
               Text("2- Please answer questions honestly for accurate result",
                 style: TextStyle(fontSize: 15,color:Colors.black87),),
               SizedBox(height: MediaQuery.of(context).size.height*.05,),
               Text("3- if the behavior is rare (e.g you've seen it onlyonce or twice),answer as if that child has not acquired the behavior",
                 style: TextStyle(fontSize: 15,color:Colors.black87),),
               SizedBox(height: MediaQuery.of(context).size.height*.05,)
             ],
           ),



            ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height*.05,
                width: MediaQuery.of(context).size.width*.45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
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

                child:Text("Start Now",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: "Poppins-Medium")),


              ),
              onTap: (){Navigator.pushNamed(context, '/selectAge');},
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