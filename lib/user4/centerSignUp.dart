import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eltohod/main.dart';

import '../myAppBar.dart';

class centerSignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return centerSignUpState();
  }
}
class centerSignUpState extends State<centerSignUp>{
  bool radio=true;
  bool check =true;
  TextEditingController centerName=new TextEditingController();
  TextEditingController city=new TextEditingController();
  TextEditingController phone=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController otherInformation=new TextEditingController();

  final phoneNode=FocusNode();
  final cityNode=FocusNode();
  final addressNode=FocusNode();
  final otherNode=FocusNode();
  final formKey=GlobalKey<FormState>();
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Container(
        child: Column(
          children: [
            myAppBar("Center Sign Up"),
            Expanded(

              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Form(
                    key: formKey,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width*.04,
                        right: MediaQuery.of(context).size.width*.04,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height *.02,),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Center Name",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(.1),
                                    spreadRadius: 4,
                                    blurRadius: 4,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: TextFormField(
                              onFieldSubmitted: (value){
                                FocusScope.of(context).requestFocus(cityNode);
                              },
                              validator: (value){
                                if(value.isEmpty){
                                  return 'Name is required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color(0xffdedede).withOpacity(.05))
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
                              controller: centerName,
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          //////
                          SizedBox(height: MediaQuery.of(context).size.height *.02,),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text("City",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(.1),
                                    spreadRadius: 4,
                                    blurRadius: 4,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: TextFormField(
                              focusNode:cityNode ,
                              onFieldSubmitted: (value){
                                FocusScope.of(context).requestFocus(addressNode);
                              },
                              validator: (value){
                                if(value.isEmpty){
                                  return 'City is required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color(0xffdedede).withOpacity(.05))
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
                              controller: city,
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          //////////////
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Address",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(.1),
                                    spreadRadius: 4,
                                    blurRadius: 4,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: TextFormField(
                              focusNode: addressNode,
                              keyboardType: TextInputType.phone,
                              onFieldSubmitted: (value){
                                FocusScope.of(context).requestFocus(phoneNode);
                              },
                              validator: (value){
                                if(value.isEmpty){
                                  return 'Phone Number is required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color(0xffdedede).withOpacity(.05))
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
                              controller: address,
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          ///////
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Phone Num",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(.1),
                                    spreadRadius: 4,
                                    blurRadius: 4,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: TextFormField(
                              focusNode: phoneNode,
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted: (value){
                                FocusScope.of(context).requestFocus(otherNode);
                              },
                              validator: (value){
                                if(value.isEmpty){
                                  return 'phone is required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color(0xffdedede).withOpacity(.05))
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
                              controller: phone,
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          ///////
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Other Information",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(.1),
                                    spreadRadius: 4,
                                    blurRadius: 4,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: TextFormField(
                              focusNode: otherNode,
                              keyboardType: TextInputType.emailAddress,

                              onFieldSubmitted: (value){
                                FocusScope.of(context).requestFocus(FocusNode());
                              },
                              validator: (value){
                                if(value.isEmpty){
                                  return 'phone is required';
                                }
                                return null;
                              },
                              minLines: 3,
                              maxLines: 4,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color(0xffdedede).withOpacity(.05))
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
                              controller: otherInformation,
                            ),
                          ),

                          SizedBox(height: MediaQuery.of(context).size.height *.017,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("i Agree On the ",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  Text("Terms And Conditions",
                                    style: TextStyle( fontSize: 13,   decoration: TextDecoration.underline,color: Color(m.mainColor),fontWeight: FontWeight.bold),),

                                ],
                              ),
                              Checkbox(value: check,onChanged: (v){
                                setState(() {
                                  check=!check;
                                });
                              },activeColor: Color(m.mainColor))
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height *.055,),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height*.05,
                      width: MediaQuery.of(context).size.width*.6,
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width*.2,
                        right: MediaQuery.of(context).size.width*.2,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(m.mainColor),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(.03),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(3, 3), // changes position of shadow
                          ),
                        ],
                      ),

                      child: Text("Sign UP",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),


                    ),
                    onTap:(){
                      if(formKey.currentState.validate())
                        Navigator.pushNamed(context, '/user4Main');
                    },
                  ),
                  SizedBox(height: 100,),
                ],
              ),
            )







          ],
        ),),

      bottomNavigationBar:  BottomNavigationBar(
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
                  Navigator.pushNamed(context, '/user4Main');
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
                  Navigator.pushNamed(context, '/user4Profile');
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