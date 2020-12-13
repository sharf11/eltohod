import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eltohod/main.dart';
import 'package:intl/intl.dart';

class user3SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return user3SignUpState();
  }
}
class user3SignUpState extends State<user3SignUp>{
  bool radio=true;
  bool check=true;
  TextEditingController name=new TextEditingController();
  TextEditingController specialty=new TextEditingController();
  TextEditingController phone=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController dateBirth=new TextEditingController();
  final SpecialtyNode=FocusNode();
  final phoneNode=FocusNode();
  final emailNode=FocusNode();
  final birthNode=FocusNode();
  final formKey=GlobalKey<FormState>();
  myApp m=new myApp();
  String gender;
  String choice;
  var finaldate;
  var today = DateFormat.yMMMd().format(new DateTime.now());
  @override
  void initState(){
    setState(() {
      gender = "male";
      // today=DateFormat.yMd(DateTime.now().toString());
    });
    super.initState();
  }
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

  void radioButtonChanges(String value) {
    setState(() {
      gender = value;
      switch (value) {
        case 'male':
          choice = value;
          break;
        case 'female':
          choice = value;
          break;
        default:
          choice = null;
      }
      //
      //  debugPrint("$choice ssssssssssssss"); //Debug the choice in console
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
        children: [
          myAppBar("Sign Up"),
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
                           child: Text("Full Name",textAlign: TextAlign.start,)),
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
                             FocusScope.of(context).requestFocus(SpecialtyNode);
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
                           controller: name,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       //////
                       SizedBox(height: MediaQuery.of(context).size.height *.02,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Medical Speciality",textAlign: TextAlign.start,)),
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
                           focusNode:SpecialtyNode ,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(phoneNode);
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
                           controller: specialty,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       //////////////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Phone Number",textAlign: TextAlign.start,)),
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
                           keyboardType: TextInputType.phone,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(emailNode);
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
                           controller: phone,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       ///////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Email Address",textAlign: TextAlign.start,)),
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
                           focusNode: emailNode,
                           keyboardType: TextInputType.emailAddress,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(birthNode);
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
                           controller: email,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       ///////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Birth Date",textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       GestureDetector(
                         child: Container(
                           decoration:BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: Colors.black12.withOpacity(.05)),
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
                           height: MediaQuery.of(context).size.height*.065,
                           width: MediaQuery.of(context).size.width,
                           alignment: Alignment.center,
                           child: Text(
                             finaldate==null?"$today":"$finaldate"
                             , style: TextStyle(color: Colors.black54,fontSize: 16,),maxLines: 1,textAlign: TextAlign.center,),

                         ),
                         onTap: callDatePicker,
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.017,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Gender"),
                           Row(
                             children: [
                               Radio(value: 'male', groupValue: gender, onChanged: radioButtonChanges,activeColor: Color(m.mainColor)),
                               Text("Male"),
                               Radio(value: 'female', groupValue: gender, onChanged: radioButtonChanges,activeColor: Color(m.mainColor),),
                               Text("Female    "),
                             ],
                           )
                         ],
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
                       SizedBox(height: MediaQuery.of(context).size.height *.02,),
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
                     bottom: 100,
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

                   child:Text("Sign UP",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),


                 ),
                 onTap:(){
                   if(formKey.currentState.validate())
                     Navigator.pushNamed(context, '/license');
                 },
               ),
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
                  Navigator.pushNamed(context, '/user3Main');
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
                  //Navigator.pushNamed(context, '/user3Profile');
                },
                icon: ImageIcon(AssetImage("images/user.png"),color: Color(m.mainColor),size: 40,),
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