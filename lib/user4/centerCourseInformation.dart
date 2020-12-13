import 'package:eltohod/EnterApp/EnterPage.dart';
import 'package:eltohod/EnterApp/father.dart';
import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class centerCourseInformation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return centerCourseInformationState();
  }
}
class centerCourseInformationState extends State<centerCourseInformation>{
  myApp m=new myApp();
  bool radio=true;
  TextEditingController courseName=new TextEditingController();
  TextEditingController coursTopic=new TextEditingController();
  TextEditingController Presenter=new TextEditingController();
  TextEditingController PresenterInformation=new TextEditingController();
  TextEditingController date=new TextEditingController();
  TextEditingController timeFrom=new TextEditingController();
  TextEditingController timeTo=new TextEditingController();
  TextEditingController amount=new TextEditingController();
  final coursTopicNode=FocusNode();
  final PresenterNode=FocusNode();
  final PresenterInformationNode=FocusNode();
  final dateNode=FocusNode();
  final timeFromNode=FocusNode();
  final timeToNode=FocusNode();
  final amountNode=FocusNode();
  final formKey=GlobalKey<FormState>();
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
          myAppBar("Course Information"),
         Expanded(
           child: ListView(
             padding: EdgeInsets.zero,
             children: [
               SizedBox(height: MediaQuery.of(context).size.height*.04,),
               Container(
                 margin: EdgeInsets.only(
                   right: MediaQuery.of(context).size.width*.05,
                   left: MediaQuery.of(context).size.width*.05,
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         GestureDetector(
                           child: Container(
                             height: MediaQuery.of(context).size.height*.09,
                             width: MediaQuery.of(context).size.width*.42,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.all(Radius.circular(15)),
                               border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12.withOpacity(.04),
                                   spreadRadius: 4,
                                   blurRadius: 9,
                                   offset: Offset(3, 3), // changes position of shadow
                                 ),
                               ],
                             ),

                             child: Text("Online",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                               ,textAlign: TextAlign.center,),


                           ),
                           onTap:(){
                             Navigator.pushNamed(context, '/onlineCourseInformation');
                           },
                         ),
                         GestureDetector(
                           child: Container(
                             height: MediaQuery.of(context).size.height*.09,
                             width: MediaQuery.of(context).size.width*.42,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               color:Color(m.mainColor),
                               borderRadius: BorderRadius.all(Radius.circular(15)),
                               border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                               boxShadow: [
                                 BoxShadow(
                                   color:Colors.black12.withOpacity(.04),
                                   spreadRadius: 4,
                                   blurRadius: 9,
                                   offset: Offset(3, 3), // changes position of shadow
                                 ),
                               ],
                             ),

                             child:  Text("In Center",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
                                 ,textAlign: TextAlign.center),

                           ),
                           onTap: (){
                             Navigator.pushNamed(context, '/centerCourseInformation');
                           },
                         ),


                       ],
                     ),
                     SizedBox(height: MediaQuery.of(context).size.height*.04,),
                     Container(
                       height: MediaQuery.of(context).size.height*.001,
                       color: Colors.black54,
                     ),

                   ],
                 ),
               ),
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
                           child: Text("Course Name",style: TextStyle(fontSize: 11),textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
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
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(coursTopicNode);
                           },
                           validator: (value){
                             if(value.isEmpty){
                               return 'Cours name is required';
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
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                             errorBorder:new OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                           ),
                           controller: courseName,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       //////
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Course Topic",style: TextStyle(fontSize: 11),textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
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
                           focusNode: coursTopicNode,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(PresenterNode);
                           },
                           validator: (value){
                             if(value.isEmpty){
                               return 'Cours Topic is required';
                             }
                             return null;
                           },
                           minLines: 4,
                           maxLines: 5,
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
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                             errorBorder:new OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                           ),
                           controller: coursTopic,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       //////////
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("presenter",style: TextStyle(fontSize: 11),textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
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
                           focusNode: PresenterNode,
                           keyboardType: TextInputType.phone,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(PresenterInformationNode);
                           },
                           validator: (value){
                             if(value.isEmpty){
                               return 'Presenter Name is required';
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
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                             errorBorder:new OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                           ),
                           controller: Presenter,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       ///////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Presenter Information ",style: TextStyle(fontSize: 11),textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
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
                           focusNode: PresenterInformationNode,
                           keyboardType: TextInputType.emailAddress,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(dateNode);
                           },
                           validator: (value){
                             if(value.isEmpty){
                               return 'Presenter info is required';
                             }
                             return null;
                           },
                           maxLines: 5,
                           minLines: 4,
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
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                             errorBorder:new OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                           ),
                           controller: PresenterInformation,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       ///////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Date",textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       InkWell(
                         child: Container(
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color: Colors.black12),
                             color: Colors.white,
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
                       ///////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Time",textAlign: TextAlign.start,)),
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
                                       borderRadius: BorderRadius.circular(20),
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
                                 FocusScope.of(context).requestFocus(amountNode);
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
                                       borderRadius: BorderRadius.circular(20),
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
                       SizedBox(height: MediaQuery.of(context).size.height *.017,),
                       ///////
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
                           alignment: Alignment.centerLeft,
                           child: Text("Amount",textAlign: TextAlign.start,)),
                       SizedBox(height: MediaQuery.of(context).size.height *.008,),
                       Container(
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
                           focusNode: amountNode,
                           keyboardType: TextInputType.number,
                           onFieldSubmitted: (value){
                             FocusScope.of(context).requestFocus(FocusNode());
                           },
                           validator: (value){
                             if(value.isEmpty){
                               return 'Amount is required';
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
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                             errorBorder:new OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Color(0xfff00f00))
                             ),
                           ),
                           controller: amount,
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height *.05,),

                     ],
                   ),
                 ),
               ),
               GestureDetector(
                 child: Container(
                   height: MediaQuery.of(context).size.height*.05,
                   width: MediaQuery.of(context).size.width*.5,
                   margin: EdgeInsets.only(
                       left: MediaQuery.of(context).size.width*.22,
                       right: MediaQuery.of(context).size.width*.22,
                       bottom:200
                   ),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                     color: Color(m.mainColor),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black12.withOpacity(.1),
                         spreadRadius: 4,
                         blurRadius: 9,
                         offset: Offset(3, 3), // changes position of shadow
                       ),
                     ],
                   ),

                   child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),


                 ),
                 onTap:(){
                   if(formKey.currentState.validate())
                     Navigator.pushNamed(context, '/endSignUp');
                 },
               ),
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