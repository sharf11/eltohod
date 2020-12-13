import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class offlineQuestionnaire extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return offlineQuestionnaireState();
  }
}
class offlineQuestionnaireState extends State<offlineQuestionnaire>{
  TextEditingController q0=new TextEditingController();
  TextEditingController q1=new TextEditingController();
  TextEditingController q2=new TextEditingController();
  TextEditingController q3=new TextEditingController();
  TextEditingController q4=new TextEditingController();
  FocusNode n0=new FocusNode();
  FocusNode n1=new FocusNode();
  FocusNode n2=new FocusNode();
  FocusNode n3=new FocusNode();
  FocusNode n4=new FocusNode();
  bool save0=false;
  bool save1=false;
  bool save2=false;
  bool save3=false;
  bool save4=false;

  final formKey=GlobalKey<FormState>();

  int counter;
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
          children: [
            myAppBar("Offline Questionnaire"),
            Container(
              //height: MediaQuery.of(context).size.height*.1,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width*.05,
                left: MediaQuery.of(context).size.width*.05,
              ),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Text("You Just Have 5 Questions ",style: TextStyle(fontSize: 15,color: Color(m.mainColor)),),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Text(" 3 ",style:TextStyle(color:Color(m.mainColor),fontSize: 16),),
                        Text( " out of ",style:TextStyle(fontSize: 16),),
                        Text(" 4 ",style:TextStyle(color:Color(m.mainColor),fontSize: 16),),
                        Text(" pages so far ",style:TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 0),
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*.01,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))


                    ),
                    child: Column(
                      children: [
                        Form(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color:Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(.04),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],

                                  ),
                                  margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height*.01,
                                    bottom: MediaQuery.of(context).size.height*.01,
                                    left: MediaQuery.of(context).size.width*.03,
                                    right: MediaQuery.of(context).size.width*.03,
                                  ),

                                  child: Stack(
                                    children: [
                                      Container(

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),

                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: MediaQuery.of(context).size.height*.05,
                                            width: MediaQuery.of(context).size.width*.12,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                              ,color:Color(0xfffdb900),
                                            ),
                                            child: Center(child: Text("1",style: TextStyle(fontSize: 17),)),
                                          )
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*.76,
                                                padding: EdgeInsets.only(
                                                    top:MediaQuery.of(context).size.height*.04,
                                                    bottom: MediaQuery.of(context).size.height*.03,
                                                    left: MediaQuery.of(context).size.width*.1,
                                                    right: MediaQuery.of(context).size.width*.02


                                                ),


                                                alignment: Alignment.center,
                                                child: TextFormField(
                                                    readOnly: save0,


                                                    onChanged: (v){
                                                      setState(() {
                                                      });
                                                    },
                                                    onFieldSubmitted: (value){
                                                      setState(() {
                                                        q0.text=value;
                                                        if(value.isNotEmpty){
                                                          setState(() {
                                                            save0=true;
                                                            FocusScope.of(context).requestFocus(n1);
                                                          });
                                                        }

                                                      });
                                                    },
                                                    validator: (value){
                                                      if(value.isEmpty){
                                                        return 'Email is required';
                                                      }
                                                      return null;
                                                    },
                                                    decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                                        enabledBorder: new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color: Colors.white)
                                                        ),
                                                        focusedBorder:  new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        focusedErrorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        errorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        hintText: ("write your Question Here")
                                                    ),
                                                    controller:q0
                                                ),
                                              ),
                                              IconButton(icon: Icon(Icons.edit,color: save0?Colors.black:Colors.white,),
                                                onPressed: (){
                                                  setState(() {
                                                    save0=false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),


                                        ],
                                      )


                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color:Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(.04),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],

                                  ),
                                  margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height*.01,
                                    bottom: MediaQuery.of(context).size.height*.01,
                                    left: MediaQuery.of(context).size.width*.03,
                                    right: MediaQuery.of(context).size.width*.03,
                                  ),

                                  child: Stack(
                                    children: [
                                      Container(

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),

                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: MediaQuery.of(context).size.height*.05,
                                            width: MediaQuery.of(context).size.width*.12,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                              ,color:Color(0xfffdb900),
                                            ),
                                            child: Center(child: Text("2",style: TextStyle(fontSize: 17),)),
                                          )
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*.76,
                                                padding: EdgeInsets.only(
                                                    top:MediaQuery.of(context).size.height*.04,
                                                    bottom: MediaQuery.of(context).size.height*.03,
                                                    left: MediaQuery.of(context).size.width*.1,
                                                    right: MediaQuery.of(context).size.width*.02


                                                ),


                                                alignment: Alignment.center,
                                                child: TextFormField(
                                                    readOnly: save1,

                                                    enabled: q1.text!=null,
                                                    onChanged: (v){
                                                      setState(() {
                                                      });
                                                    },
                                                    focusNode: n1,
                                                    onFieldSubmitted: (value){
                                                      setState(() {
                                                        q1.text=value;
                                                        if(value.isNotEmpty){
                                                          setState(() {
                                                            save1=true;
                                                            FocusScope.of(context).requestFocus(n2);
                                                          });
                                                        }

                                                      });
                                                    },
                                                    validator: (value){
                                                      if(value.isEmpty){
                                                        return 'Email is required';
                                                      }
                                                      return null;
                                                    },
                                                    decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                                        enabledBorder: new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color: Colors.white)
                                                        ),
                                                        focusedBorder:  new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        focusedErrorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        errorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        hintText: ("write your Question Here")
                                                    ),
                                                    controller:q1
                                                ),
                                              ),
                                              IconButton(icon: Icon(Icons.edit,color: save1?Colors.black:Colors.white,),
                                                onPressed: (){
                                                  setState(() {
                                                    save1=false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),


                                        ],
                                      )


                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color:Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(.04),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],

                                  ),
                                  margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height*.01,
                                    bottom: MediaQuery.of(context).size.height*.01,
                                    left: MediaQuery.of(context).size.width*.03,
                                    right: MediaQuery.of(context).size.width*.03,
                                  ),

                                  child: Stack(
                                    children: [
                                      Container(

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),

                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: MediaQuery.of(context).size.height*.05,
                                            width: MediaQuery.of(context).size.width*.12,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                              ,color:Color(0xfffdb900),
                                            ),
                                            child: Center(child: Text("3",style: TextStyle(fontSize: 17),)),
                                          )
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*.76,
                                                padding: EdgeInsets.only(
                                                    top:MediaQuery.of(context).size.height*.04,
                                                    bottom: MediaQuery.of(context).size.height*.03,
                                                    left: MediaQuery.of(context).size.width*.1,
                                                    right: MediaQuery.of(context).size.width*.02


                                                ),


                                                alignment: Alignment.center,
                                                child: TextFormField(
                                                    readOnly: save2,


                                                    onChanged: (v){
                                                      setState(() {
                                                      });
                                                    },
                                                    focusNode: n2,
                                                    onFieldSubmitted: (value){
                                                      setState(() {
                                                        q2.text=value;
                                                        if(value.isNotEmpty){
                                                          setState(() {
                                                            save2=true;
                                                            FocusScope.of(context).requestFocus(n3);
                                                          });
                                                        }

                                                      });
                                                    },
                                                    validator: (value){
                                                      if(value.isEmpty){
                                                        return 'Email is required';
                                                      }
                                                      return null;
                                                    },
                                                    decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                                        enabledBorder: new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color: Colors.white)
                                                        ),
                                                        focusedBorder:  new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        focusedErrorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        errorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        hintText: ("write your Question Here")
                                                    ),
                                                    controller:q2
                                                ),
                                              ),
                                              IconButton(icon: Icon(Icons.edit,color: save2?Colors.black:Colors.white,),
                                                onPressed: (){
                                                  setState(() {
                                                    save2=false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),


                                        ],
                                      )


                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*9,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color:Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(.04),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],

                                  ),
                                  margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height*.01,
                                    bottom: MediaQuery.of(context).size.height*.01,
                                    left: MediaQuery.of(context).size.width*.03,
                                    right: MediaQuery.of(context).size.width*.03,
                                  ),

                                  child: Stack(
                                    children: [
                                      Container(

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),

                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: MediaQuery.of(context).size.height*.05,
                                            width: MediaQuery.of(context).size.width*.12,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                              ,color:Color(0xfffdb900),
                                            ),
                                            child: Center(child: Text("4",style: TextStyle(fontSize: 17),)),
                                          )
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*.79,
                                                padding: EdgeInsets.only(
                                                    top:MediaQuery.of(context).size.height*.04,
                                                    bottom: MediaQuery.of(context).size.height*.03,
                                                    left: MediaQuery.of(context).size.width*.1,
                                                    right: MediaQuery.of(context).size.width*.02


                                                ),


                                                alignment: Alignment.center,
                                                child: TextFormField(
                                                    readOnly: save4,


                                                    onChanged: (v){
                                                      setState(() {
                                                      });
                                                    },
                                                    onFieldSubmitted: (value){
                                                      setState(() {
                                                        q3.text=value;
                                                        if(value.isNotEmpty){
                                                          setState(() {
                                                            save3=true;
                                                            FocusScope.of(context).requestFocus(n4);
                                                          });
                                                        }

                                                      });
                                                    },
                                                    focusNode: n3,
                                                    validator: (value){
                                                      if(value.isEmpty){
                                                        return 'Email is required';
                                                      }
                                                      return null;
                                                    },
                                                    decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                                        enabledBorder: new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color: Colors.white)
                                                        ),
                                                        focusedBorder:  new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        focusedErrorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        errorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        hintText: ("write your Question Here")
                                                    ),
                                                    controller:q3
                                                ),
                                              ),
                                              IconButton(icon: Icon(Icons.edit,color: save3?Colors.black:Colors.white,),
                                                onPressed: (){
                                                  setState(() {
                                                    save3=false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),


                                        ],
                                      )


                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color:Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(.04),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],

                                  ),
                                  margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height*.01,
                                    bottom: MediaQuery.of(context).size.height*.01,
                                    left: MediaQuery.of(context).size.width*.02,
                                    right: MediaQuery.of(context).size.width*.02,
                                  ),

                                  child: Stack(
                                    children: [
                                      Container(

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),

                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: MediaQuery.of(context).size.height*.05,
                                            width: MediaQuery.of(context).size.width*.12,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                              ,color:Color(0xfffdb900),
                                            ),
                                            child: Center(child: Text("5",style: TextStyle(fontSize: 17),)),
                                          )
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*.76,
                                                padding: EdgeInsets.only(
                                                    top:MediaQuery.of(context).size.height*.04,
                                                    bottom: MediaQuery.of(context).size.height*.03,
                                                    left: MediaQuery.of(context).size.width*.1,
                                                    right: MediaQuery.of(context).size.width*.02


                                                ),


                                                alignment: Alignment.center,
                                                child: TextFormField(
                                                    readOnly: save4,

                                                    enabled: q1.text!=null,
                                                    onChanged: (v){
                                                      setState(() {
                                                      });
                                                    },
                                                    focusNode: n4,
                                                    onFieldSubmitted: (value){
                                                      setState(() {
                                                        q4.text=value;
                                                        if(value.isNotEmpty){
                                                          setState(() {
                                                            save4=true;
                                                            FocusScope.of(context).requestFocus(FocusNode());
                                                          });
                                                        }

                                                      });
                                                    },
                                                    validator: (value){
                                                      if(value.isEmpty){
                                                        return 'Email is required';
                                                      }
                                                      return null;
                                                    },
                                                    decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                                        enabledBorder: new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color: Colors.white)
                                                        ),
                                                        focusedBorder:  new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        focusedErrorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        errorBorder:new OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                            borderSide: BorderSide(color:  Colors.white)
                                                        ),
                                                        hintText: ("write your Question Here")
                                                    ),
                                                    controller:q4
                                                ),
                                              ),
                                              IconButton(icon: Icon(Icons.edit,color: save4?Colors.black:Colors.white,),
                                                onPressed: (){
                                                  setState(() {
                                                    save4=false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),


                                        ],
                                      )


                                    ],
                                  ),
                                ),


                              ],
                            )
                        )

                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
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

                      Navigator.pushNamed(context, '/submitQuestionaire');
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                ],
              ),

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