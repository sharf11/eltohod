import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class doctor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return doctorState();
  }

}
class doctorState extends State<doctor>{
  myApp c=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
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
            margin: EdgeInsets.only(
              //top: MediaQuery.of(context).size.height*.3,
            ),

            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.04),
                  child: Image.asset('images/enterApp/doctor.png',
                    width: MediaQuery.of(context).size.width*.8,
                    height:MediaQuery.of(context).size.height*.4,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.02),
                          child: Text(translator.translate('FromApp'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.01),
                          width: MediaQuery.of(context).size.width*.83,
                          child: Text(translator.translate('AboutAPP'),style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.05),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height*.065,
                          width: MediaQuery.of(context).size.width*.7,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height*.04,
                            bottom:  MediaQuery.of(context).size.height*.02,
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30),color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child:   Text(translator.translate('buttonNext'),style: TextStyle(color:Color(c.blackColor),fontSize: 15,fontWeight: FontWeight.bold),),



                        ),
                          onTap:(){Navigator.pushNamed(context, '/cluster');}
                      ),
                      InkWell(
                        child: Text(translator.translate('buttonSkip'),style: TextStyle(color: Colors.black54,fontSize: 15,),),
                        onTap: (){Navigator.pushNamed(context, '/homePage');},  ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }

}