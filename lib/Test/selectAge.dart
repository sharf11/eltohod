import 'package:eltohod/EnterApp/EnterPage.dart';
import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class selectAge extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return selectAgeState();
  }
}
class selectAgeState extends State<selectAge>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(

          children: [

            myAppBar("Diagnostic Test"),
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
           Text("Select your child age",style: TextStyle(fontSize: 17,fontFamily: "Poppins-Medium"),),
            SizedBox(height: MediaQuery.of(context).size.height*.06,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height*.08,
                width: MediaQuery.of(context).size.width*.8,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.09)),
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


                  child: Text("Under 4 years",style: TextStyle(color: Colors.black,fontSize: 17,fontFamily: "Poppins-Medium")),

                ),
              onTap: (){Navigator.pushNamed(context, '/test1');},
            ),

            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height*.08,
                width: MediaQuery.of(context).size.width*.8,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.09)),
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


                  child: Text("4 years And Above",style: TextStyle(color: Colors.black,fontSize:17,fontFamily: "Poppins-Medium")),

                  ),
              onTap: (){Navigator.pushNamed(context, '/test1');},
            ),

            SizedBox(height: MediaQuery.of(context).size.height*.1,),
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

                child:  Text("Start Now",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: "Poppins-Medium")),


              ),
              onTap: (){Navigator.pushNamed(context, '/test1');},
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