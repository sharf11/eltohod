import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eltohod/main.dart';

class verificationCode extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return verificationCodeState();
  }
}
class verificationCodeState extends State<verificationCode>{
  final foemKey=GlobalKey<FormState>();
  final nod1=FocusNode();
  final nod2=FocusNode();
  final nod3=FocusNode();
  final nod4=FocusNode();
  final nod5=FocusNode();
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
        children: [
          myAppBar("Medical Record"),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Text("Enter Your Code",style: TextStyle(color: Colors.black,fontSize: 15,),),
          SizedBox(height: MediaQuery.of(context).size.height*.03,),
          Form(
            key: foemKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *.15,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(10)),
                 // border: Border.all(width: 1.0,color: Colors.black12)
                  ),
                  child: TextFormField(
                    maxLength: 1,
                    autofocus: true,
                    onChanged: (val){
                      FocusScope.of(context).requestFocus(nod1);
                    },
                    validator: (value){
                      if(value.isEmpty)
                        return '';
                      return null;
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterStyle: TextStyle(fontSize: 0),
                      contentPadding: EdgeInsets.only(top: 15,bottom: 15),
                      enabledBorder: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      focusedBorder:  new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                      errorBorder:  new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                      focusedErrorBorder:new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red
                          )
                      ),
                    ),
                    controller: null,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width *.15,
                  decoration: BoxDecoration(
                     // border: Border.all(width: 1.0,color: Colors.black12),
                   borderRadius:BorderRadius.all(Radius.circular(10)),
                   // color: Colors.white,
                  ),
                  child: TextFormField(
                    maxLength: 1,
                    onChanged: (val){
                      FocusScope.of(context).requestFocus(nod2);
                    },
                    focusNode: nod1,
                    validator: (value){
                      if(value.isEmpty)
                        return '';
                      return null;
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterStyle: TextStyle(fontSize: 0),
                      contentPadding: EdgeInsets.only(top: 15,bottom: 15),
                      enabledBorder: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      focusedBorder:  new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                      errorBorder:  new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                      focusedErrorBorder:new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red
                          )
                      ),
                    ),
                    controller: null,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width *.15,
                  decoration: BoxDecoration(
                    //border: Border.all(width: 1.0,color: Colors.black12),
                    borderRadius:BorderRadius.all(Radius.circular(10)),
                   // color: Colors.white,
                  ),
                  child: TextFormField(
                    maxLength: 1,
                    onChanged: (val){
                      FocusScope.of(context).requestFocus(nod3);
                    },
                    focusNode: nod2,
                    validator: (value){
                      if(value.isEmpty)
                        return '';
                      return null;
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterStyle: TextStyle(fontSize: 0),
                      contentPadding: EdgeInsets.only(top: 15,bottom: 15),
                      enabledBorder: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      focusedBorder:  new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                      errorBorder:  new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                      focusedErrorBorder:new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red
                          )
                      ),
                    ),
                    controller: null,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width *.15,
                  decoration: BoxDecoration(
                    //border: Border.all(width: 1.0,color: Colors.black12),
                   borderRadius:BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    maxLength: 1,
                    validator: (value){
                      if(value.isEmpty)
                        return '';
                      return null;
                    },
                    focusNode: nod3,
                    onChanged: (val){
                      FocusScope.of(context).requestFocus(nod4);
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterStyle: TextStyle(fontSize: 0),
                      contentPadding: EdgeInsets.only(top: 15,bottom: 15),
                      enabledBorder: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      focusedBorder:  new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                      errorBorder:  new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                      focusedErrorBorder:new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red
                          )
                      ),
                    ),
                    controller: null,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.1,),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width*.1,
                  left: MediaQuery.of(context).size.width*.1
              ),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Color(m.mainColor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.1),
                    spreadRadius: 7,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height*.05,
              width: MediaQuery.of(context).size.width*.6,
              child:  Text("Confirm",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
            ),
              onTap:()=>{
                if(foemKey.currentState.validate()){
                  Navigator.pushNamed(context, '/userProfile')
                }
              }
          ),







        ],),
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