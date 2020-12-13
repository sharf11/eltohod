import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vedioCall extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return vedioCallState();
  }
}
class vedioCallState extends State<vedioCall>{
  bool vedio=false;
  bool mic=true;
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Column(
        children: [
          myAppBar("Dr.Ahmed Mansour"),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("images/videoDoctor.png",
                  fit: BoxFit.fill,),
                ),
                Positioned(
                    width: MediaQuery.of(context).size.width*.7 ,
                    top: MediaQuery.of(context).size.height*.68,
                    left: MediaQuery.of(context).size.width*.15 ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*.06,
                          width: MediaQuery.of(context).size.height*.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Color(m.mainColor)
                          ),
                          child: IconButton(icon: Icon(mic?Icons.mic:Icons.mic_off),onPressed: (){
                            setState(() {
                              mic=!mic;
                            });
                          },),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*.06,
                          width: MediaQuery.of(context).size.height*.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Color(m.mainColor)
                          ),
                          child: IconButton(icon:vedio? ImageIcon(AssetImage("images/video_call.png"),size: 25,):ImageIcon(AssetImage("images/video_call_off.png"),size: 25,),
                          onPressed: (){setState(() {
                            vedio=!vedio;
                          });},),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*.06,
                          width: MediaQuery.of(context).size.height*.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Color(0xffdc3333)
                          ),
                          child: IconButton(icon: Icon(Icons.call_end),onPressed: (){
                            Navigator.pushNamed(context, '/endCall');
                          },),
                        )
                  ],
                )),
                Positioned(
                  top: MediaQuery.of(context).size.height*.02,
                  left: MediaQuery.of(context).size.height*.02,
                  child:  Container(
                  height: MediaQuery.of(context).size.height*.25,
                  width: MediaQuery.of(context).size.height*.17,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.black12
                  ),
                    child:vedio?Center(child: CircularProgressIndicator()): Image.asset("images/videoPatient.png",
                      fit: BoxFit.fill,),

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