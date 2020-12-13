import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return settingState();
  }
}
class settingState extends State<setting>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Text("Setting page "),
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
               onPressed:(){//Navigator.pushNamed(context, '/setting');
                 },
               icon: ImageIcon(AssetImage("images/setting.png"),size: 40,
                 color: Color(m.mainColor),
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
               onPressed:(){Navigator.pushNamed(context, '/signIn');},
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