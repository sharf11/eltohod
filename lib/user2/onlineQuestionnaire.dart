import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../myAppBar.dart';

class onlineQuestionnaire extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return onlineQuestionnaireState();
  }
}
class onlineQuestionnaireState extends State<onlineQuestionnaire>{
  TextEditingController date=new TextEditingController();
  TextEditingController time=new TextEditingController();
  TextEditingController duration=new TextEditingController();
  final timeNode=FocusNode();
  final durationNode=FocusNode();
  final formKey=GlobalKey<FormState>();
  myApp m =new myApp();
  var finaldate;
  var today = DateFormat.yMMMd().format(new DateTime.now());
  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate =DateFormat.yMMMd().format(order);
    });
    print(finaldate);
  }
  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark(),
          child: child,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     resizeToAvoidBottomPadding: false,
     body: Container(
       child: Column(
         children: [
           myAppBar("Online Questionaire"),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Form(
                  key: formKey,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width*.05,
                      right:  MediaQuery.of(context).size.width*.05,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height *.02,),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Questionaire Date",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                        SizedBox(height: MediaQuery.of(context).size.height *.008,),
                        InkWell(
                          child: Container(
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black12.withOpacity(.05)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(.25),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: MediaQuery.of(context).size.height*.065,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Text(
                              finaldate==null?"$today":"$finaldate"
                              , style: TextStyle(color: Colors.black54,fontSize: 16,),maxLines: 1,textAlign: TextAlign.center,),

                          ),
                          onTap: callDatePicker,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *.008,),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Questionaire Time",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                        SizedBox(height: MediaQuery.of(context).size.height *.008,),
                        Container(
                          //height: MediaQuery.of(context).size.height*.065,
                          width: MediaQuery.of(context).size.width,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12.withOpacity(.05)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.25),
                                spreadRadius: 4,
                                blurRadius: 4,
                                offset: Offset(3, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextFormField(
                            focusNode: timeNode,
                            keyboardType: TextInputType.phone,
                            onFieldSubmitted: (value){
                              FocusScope.of(context).requestFocus(durationNode);
                            },
                            validator: (value){
                              if(value.isEmpty){
                                return '';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                              enabledBorder: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black12.withOpacity(.01))
                              ),
                              focusedBorder:  new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xffdedede))
                              ),
                              focusedErrorBorder:new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xfff00f00))
                              ),
                              errorBorder:new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xfff00f00))
                              ),
                            ),
                            controller: time,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *.008,),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Questionaire Duration",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                        SizedBox(height: MediaQuery.of(context).size.height *.008,),
                        Container(
                          //height: MediaQuery.of(context).size.height*.065,
                          width: MediaQuery.of(context).size.width,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12.withOpacity(.05)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.25),
                                spreadRadius: 4,
                                blurRadius: 4,
                                offset: Offset(3, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextFormField(
                            focusNode: durationNode,
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (value){
                              FocusScope.of(context).requestFocus(FocusNode());
                            },
                            validator: (value){
                              if(value.isEmpty){
                                return '';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                              enabledBorder: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black12.withOpacity(.01))
                              ),
                              focusedBorder:  new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xffdedede))
                              ),
                              focusedErrorBorder:new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xfff00f00))
                              ),
                              errorBorder:new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xfff00f00))
                              ),
                            ),
                            controller: duration,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *.08,),


                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height*.05,
                    width: MediaQuery.of(context).size.width*.46,
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width*.23,
                      right: MediaQuery.of(context).size.width*.23,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(m.mainColor),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.01)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(.04),
                          spreadRadius: 4,
                          blurRadius: 9,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),

                    child: Text("Confirm",style: TextStyle(color:Colors.white,fontSize: 11.5,fontWeight: FontWeight.bold)
                      ,textAlign: TextAlign.center,),


                  ),
                  onTap: (){
                    if(formKey.currentState.validate())
                      Navigator.pushNamed(context, '/videoQuestionaire');
                  },
                ),
              ],
            ),
          )

         ],

     ),),
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