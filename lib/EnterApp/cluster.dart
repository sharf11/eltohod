import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class cluster extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return clusterState();
  }

}
class clusterState extends State<cluster>{
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
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1),
                  child: Image.asset('images/enterApp/cluster.png',
                    width: MediaQuery.of(context).size.width*.75,
                    height:MediaQuery.of(context).size.height*.33,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height*.037,
                              top: MediaQuery.of(context).size.height*.03),
                          child: Text(translator.translate('AlsoAboutAPP'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      Container(
                          width: MediaQuery.of(context).size.width*.82,
                          child: Text(translator.translate('cluster'),style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)),

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
                            bottom:  MediaQuery.of(context).size.height*.03,
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30),color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child:   Text(translator.translate('buttonFinish'),style: TextStyle(color:Color(c.blackColor),fontSize: 15,fontWeight: FontWeight.bold),),



                        ),
                          onTap:(){Navigator.pushNamed(context, '/enterPage');}
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )

    );

  }

}