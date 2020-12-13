import 'package:eltohod/myAppBar.dart';
import 'package:eltohod/myServices/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eltohod/main.dart';

class clinicDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return clinicDetailsState();
  }
}
class clinicDetailsState extends State<clinicDetails>{
  bool radio=true;
  TextEditingController clinicName=new TextEditingController();
  TextEditingController city=new TextEditingController();
  TextEditingController location=new TextEditingController();
  TextEditingController phone=new TextEditingController();
  TextEditingController dayFrom=new TextEditingController();
  TextEditingController dayTo=new TextEditingController();
  TextEditingController timeFrom=new TextEditingController();
  TextEditingController timeTo=new TextEditingController();

  final cityNode=FocusNode();
  final locationNode=FocusNode();
  final phoneNode=FocusNode();
  final dayFromNode=FocusNode();
  final dayToNode=FocusNode();
  final timeToNode=FocusNode();
  final timeFromNode=FocusNode();
  final formKey=GlobalKey<FormState>();
  myApp m=new myApp();
  List<String> days =["Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"];
  String today;
  String today1;
  var time1;
  var time2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    today=days[0];
    today1=days[1];
    time1= TimeOfDay.now();
    time2=TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
        children: [
          myAppBar("Clinic Details"),
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
                     right: MediaQuery.of(context).size.width*.05,
                   ),
                   child: Column(
                     children: [
                       SizedBox(height: MediaQuery.of(context).size.height *.02,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Clinic Name",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
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
                               return 'Clinic Name is required';
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
                           controller: clinicName,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       //////
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
                           focusNode: cityNode,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(locationNode);
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
                       ///////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Location",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
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
                           focusNode: locationNode,
                           keyboardType: TextInputType.emailAddress,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(phoneNode);
                           },
                           validator: (value){
                             if(value.isEmpty){
                               return 'Location is required';
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
                           controller: location,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       //////////
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Phone Number",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
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
                             FocusScope.of(context).requestFocus(dayFromNode);
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
                           child: Text("Days Of Work",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*.43,
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
                             padding: EdgeInsets.only(
                                 left: MediaQuery.of(context).size.width*.03,
                                 right: MediaQuery.of(context).size.width*.03
                             ),
                             child: DropdownButtonFormField<String>(
                               decoration: InputDecoration(
                                   enabledBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(style: BorderStyle.none))),
                               elevation: 0,
                               value: today,
                               onChanged: (String Value) {
                                 setState(() {
                                   today = Value;
                                 });
                               },
                               items: days.map((String user) {
                                 return  DropdownMenuItem<String>(
                                   value: user,
                                   child: Text(user, style:  TextStyle(fontSize:10,color: Colors.black),),
                                 );
                               }).toList(),
                             ),
                           ),
                           Container(
                             width: MediaQuery.of(context).size.width*.43,
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
                             padding: EdgeInsets.only(
                                 left: MediaQuery.of(context).size.width*.03,
                                 right: MediaQuery.of(context).size.width*.03
                             ),
                             child: DropdownButtonFormField<String>(
                               decoration: InputDecoration(
                                   enabledBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(style: BorderStyle.none))),
                               elevation: 0,
                               value: today1,
                               onChanged: (String Value) {
                                 setState(() {
                                   today1 = Value;
                                 });
                               },
                               items: days.map((String user) {
                                 return  DropdownMenuItem<String>(
                                   value: user,
                                   child: Text(user, style:  TextStyle(fontSize:10,color: Colors.black),),
                                 );
                               }).toList(),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.017,),
                       ///////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Times Of Work",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*.43,
                             decoration: BoxDecoration(
                               borderRadius:BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12.withOpacity(.03),
                                   spreadRadius: 4,
                                   blurRadius: 9,
                                   offset: Offset(3, 3), // changes position of shadow
                                 ),
                               ],
                             ),
                             child: TextFormField(
                               keyboardType: TextInputType.number,
                               focusNode: timeFromNode,
                               onFieldSubmitted: (value){
                                 FocusScope.of(context).requestFocus(timeToNode);
                               },
                               validator: (value){
                                 if(value.isEmpty){
                                   return 'Start Time is required';
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
                                   hintText: "From"
                               ),
                               controller: timeFrom,
                             ),
                           ),
                           Container(
                             width: MediaQuery.of(context).size.width*.43,
                             decoration: BoxDecoration(
                               borderRadius:BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12.withOpacity(.03),
                                   spreadRadius: 4,
                                   blurRadius: 9,
                                   offset: Offset(3, 3), // changes position of shadow
                                 ),
                               ],
                             ),
                             child: TextFormField(
                               keyboardType: TextInputType.number,
                               focusNode: timeToNode,
                               onFieldSubmitted: (value){
                                 // FocusScope.of(context).requestFocus(amountNode);
                               },
                               validator: (value){
                                 if(value.isEmpty){
                                   return 'End Time is required';
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
                                   hintText: "To"
                               ),
                               controller: timeTo,
                             ),
                           ),

                         ],
                       ),
                       /*Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             GestureDetector(
                               child: Container(
                                 width: MediaQuery.of(context).size.width*.43,
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
                               padding: EdgeInsets.only(
                                 top: MediaQuery.of(context).size.height*.015,
                                 bottom:  MediaQuery.of(context).size.height*.015,
                               ),
                               alignment: Alignment.center,
                               child: Text("$time1",style: TextStyle(fontSize: 10),),
                               *//*  child: TextFormField(
                                   focusNode: timeFromNode,
                                   onFieldSubmitted: (value){
                                     FocusScope.of(context).requestFocus(timeToNode);
                                   },
                                   validator: (value){
                                     if(value.isEmpty){
                                       return 'times of work is required';
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
                                   controller: timeFrom,
                                 ),*//*
                               ),
                               onTap: (){
                                 time1 = showTimePicker(
                                   initialTime: TimeOfDay.now(),
                                   context: context,
                                 );
                               },
                             ),
                             GestureDetector(
                               child: Container(
                                 width: MediaQuery.of(context).size.width*.43,
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
                                 padding: EdgeInsets.only(
                                   top: MediaQuery.of(context).size.height*.015,
                                   bottom:  MediaQuery.of(context).size.height*.015,
                                 ),
                                 alignment: Alignment.center,
                               child: Text("$time2",style: TextStyle(fontSize: 10),),
                               *//*  child: TextFormField(
                                   focusNode: timeToNode,
                                   onFieldSubmitted: (value){
                                     FocusScope.of(context).requestFocus(FocusNode());
                                   },
                                   validator: (value){
                                     if(value.isEmpty){
                                       return 'Times of work is required';
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
                                   controller: timeTo,
                                 ),*//*
                               ),
                               onTap: (){
                                 time2 = showTimePicker(
                                   initialTime: TimeOfDay.now(),
                                   context: context,
                                 );
                               },
                             ),
                           ],
                         ),*/
                       SizedBox(height: MediaQuery.of(context).size.height *.07,),
                     ],
                   ),
                 ),
               ),
               GestureDetector(
                 child: Container(
                   height: MediaQuery.of(context).size.height*.05,
                   width: MediaQuery.of(context).size.width*.45,
                   margin: EdgeInsets.only(
                       left: MediaQuery.of(context).size.width*.23,
                       right: MediaQuery.of(context).size.width*.23,
                       bottom: 200
                   ),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20)),
                       color: Color(m.mainColor),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black12.withOpacity(.2),
                           spreadRadius: 4,
                           blurRadius: 4,
                           offset: Offset(3, 3), // changes position of shadow
                         ),
                       ]
                   ),

                   child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),


                 ),
                 onTap:(){
                   if(formKey.currentState.validate())
                     Navigator.pushNamed(context, '/user3Main');
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
                  Navigator.pushNamed(context, '/user3Profile');
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