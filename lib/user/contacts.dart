

import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contacts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return contactsState();
  }
}
class contactsState extends State<contacts>{
  myApp m=new myApp();
  int counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
        children: [
          myAppBar("Contacts"),
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
                   bottom: index==14?50:0,
                 ),
                 child: Column(
                   children: [
                     SizedBox(height: MediaQuery.of(context).size.height*.015,),
                     Row(
                       children: [
                         Container(
                           height: MediaQuery.of(context).size.height*.08,
                           width: MediaQuery.of(context).size.height*.08,
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(100)),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black12.withOpacity(.1),
                                 spreadRadius: 5,
                                 blurRadius: 4,
                                 offset: Offset(0, 3), // changes position of shadow
                               ),
                             ],
                           ),
                           child: Image.asset('images/Ellipse 65.png',
                           ),
                         ),
                         SizedBox(width: MediaQuery.of(context).size.width*.05,),
                         Text("Mr Osama",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                       ],
                     ),
                     SizedBox(height: MediaQuery.of(context).size.height*.015,),
                     Container(
                       height: 1.5,
                       color: Colors.black38,
                     )
                   ],
                 ),
               );
             },
             itemCount:15,

           ),
         )


        ],
        )
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