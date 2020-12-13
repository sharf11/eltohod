import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class enterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return enterPageState();
  }

}
class enterPageState extends State<enterPage>{
  myApp c=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.zero,
            child: Image.asset("images/mainBG.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.1,),
                Container(
                  height: MediaQuery.of(context).size.height*.27,
                  child: Image.asset('images/logo.png',
                    width: MediaQuery.of(context).size.width*.6,
                    height:MediaQuery.of(context).size.height*.27,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*.58,
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.06,),
                      Text(translator.translate('EnterPage'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height*.065,
                          width: MediaQuery.of(context).size.width*.7,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height*.03,
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30),color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child:   Text(translator.translate('user1'),style: TextStyle(color:Color(c.blackColor),fontSize: 15,fontWeight: FontWeight.bold),),

                        ),
                          onTap:(){Navigator.pushNamed(context, '/homePage');}
                      ),
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height*.065,
                          width: MediaQuery.of(context).size.width*.7,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height*.02,
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30),color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child:  Text(translator.translate('user2'),style: TextStyle(color:Color(c.blackColor),fontSize: 15,fontWeight: FontWeight.bold),),

                        ),
                          onTap:(){Navigator.pushNamed(context, '/user3SignUp');}
                      ),
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height*.065,
                          width: MediaQuery.of(context).size.width*.7,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height*.02,
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30),color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child:  Text(translator.translate('user3'),style: TextStyle(color:Color(c.blackColor),fontSize: 15,fontWeight: FontWeight.bold),),

                        ),
                          onTap:(){Navigator.pushNamed(context, '/user2Main');}
                      ),
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height*.065,
                          width: MediaQuery.of(context).size.width*.7,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height*.02,
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30),color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child:   Text(translator.translate('user4'),style: TextStyle(color:Color(c.blackColor),fontSize: 15,fontWeight: FontWeight.bold),),

                        ),
                          onTap:(){Navigator.pushNamed(context, '/coursePresnter');}
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );

  }

}