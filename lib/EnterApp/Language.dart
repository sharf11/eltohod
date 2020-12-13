import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class language extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return languageState();
  }

}
class languageState extends State<language>{

  setData(String key,String value)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }
  clearData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
  myApp c=new myApp();
  @override
  Widget build(BuildContext context) {
    //mainBG.png
   return Scaffold(
     body:  Stack(overflow: Overflow.visible,
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
                 Container(
                   height: MediaQuery.of(context).size.height*.29,
                   width: MediaQuery.of(context).size.width*.65,
                   margin: EdgeInsets.only(
                     top: MediaQuery.of(context).size.height*.135,
                     bottom: MediaQuery.of(context).size.height*.085,

                   ),
                   child: Image.asset('images/logo2.png',
                     width: MediaQuery.of(context).size.width*.65,
                     height:MediaQuery.of(context).size.height*.29,
                     fit: BoxFit.contain,
                   ),
                 ),
                 Container(
                   child:Column(
                     children: [
                       GestureDetector(
                         child: Container(
                           alignment: Alignment.center,
                           height: MediaQuery.of(context).size.height*.065,
                           width: MediaQuery.of(context).size.width*.7,
                           margin: EdgeInsets.only(
                             top: MediaQuery.of(context).size.height*.04,
                           ),
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(30),color: Colors.white,
                           ),
                           child:   Text("English",style: TextStyle(color:Color(c.blackColor),fontSize: 15,fontWeight: FontWeight.bold),),


                         ),
                           onTap:
                               (){
                             translator.setNewLanguage(
                               context,
                               newLanguage: 'en' ,
                               remember: true,
                               restart: true,
                             );
                             clearData();
                             setData('lang', 'en');
                             Navigator.of(context)
                                 .pushNamedAndRemoveUntil('/father',
                                     (Route<dynamic> route) => false);
                           }
                       ),
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
                           child:  Text("عربي",style: TextStyle(color:Color(c.blackColor),fontSize: 15,fontWeight: FontWeight.bold),),

                         ),
                           onTap: (){
                             translator.setNewLanguage(
                               context,
                               newLanguage: 'ar' ,
                               remember: true,
                               restart: true,
                             );
                             clearData();
                             setData('lang', 'ar');
                             Navigator.of(context)
                                 .pushNamedAndRemoveUntil('/father',
                                     (Route<dynamic> route) => false);
                           }
                       ),
                     ],
                   ),
                 )

               ],
             ),
           )
         ],
       ),

   );

  }

}