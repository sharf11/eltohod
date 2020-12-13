import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class videoQuestionaire extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return videoQuestionaireState();
  }
}
class videoQuestionaireState extends State<videoQuestionaire>{
  myApp m=new myApp();
  bool vedio=false;
  bool mic=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(m.mainColor),
      body: Container(
        child: Column(
          children: [
            myAppBar("Online Questionaire"),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*.775,
                  width: MediaQuery.of(context).size.width,


                ),
                Positioned(
                    width: MediaQuery.of(context).size.width*.7 ,
                    top: MediaQuery.of(context).size.height*.69,
                    left: MediaQuery.of(context).size.width*.15 ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*.06,
                          width: MediaQuery.of(context).size.height*.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Color(m.whiteMainColor)
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
                              color: Color(m.whiteMainColor)
                          ),
                          child: IconButton(icon:vedio? ImageIcon(AssetImage("images/video_call.png"),size: 30,):ImageIcon(AssetImage("images/video_call_off.png"),size: 30,),
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
                            Navigator.pushNamed(context, '/user2Main');
                          },),
                        )
                      ],
                    )),
                Positioned(
                  top: MediaQuery.of(context).size.height*.02,
                  left: MediaQuery.of(context).size.height*.167,
                  child:  Container(
                    height: MediaQuery.of(context).size.height*.2,
                    width: MediaQuery.of(context).size.height*.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
                    child: vedio?Center(child: CircularProgressIndicator()): Image.asset("images/videoPatient.png",fit: BoxFit.fill,),

                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*.23,
                  left: MediaQuery.of(context).size.height*.05,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*.2,
                        width: MediaQuery.of(context).size.height*.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white
                        ),
                        child: vedio?Center(child: CircularProgressIndicator()): Image.asset("images/videoPatient.png",fit: BoxFit.fill,),

                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*.05,),
                      Container(
                        height: MediaQuery.of(context).size.height*.2,
                        width: MediaQuery.of(context).size.height*.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white
                        ),
                        child: vedio?Center(child: CircularProgressIndicator()): Image.asset("images/videoPatient.png",fit: BoxFit.fill,),

                      ),
                    ],
                  )
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height*.44,
                    left: MediaQuery.of(context).size.height*.05,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*.2,
                          width: MediaQuery.of(context).size.height*.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white
                          ),
                          child: vedio?Center(child: CircularProgressIndicator()): Image.asset("images/videoPatient.png",fit: BoxFit.fill,),

                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*.05,),
                        Container(
                          height: MediaQuery.of(context).size.height*.2,
                          width: MediaQuery.of(context).size.height*.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white
                          ),
                          child: vedio?Center(child: CircularProgressIndicator()): Image.asset("images/videoPatient.png",fit: BoxFit.fill,),

                        ),
                      ],
                    )
                ),
              ],
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