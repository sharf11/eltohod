import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eltohod/main.dart';
import 'package:intl/intl.dart';
class signUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return signUpState();
  }
}
class signUpState extends State<signUp>{
  bool radio=true;
  bool check=false;
  TextEditingController name=new TextEditingController();
  TextEditingController phone=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController dateBirth=new TextEditingController();
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
                          ),
                          child: TextFormField(
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
                                  borderSide: BorderSide(color: Color(0xffdedede))
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
                        SizedBox(height: MediaQuery.of(context).size.height *.008,),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Phone Number",textAlign: TextAlign.start,)),
                        SizedBox(height: MediaQuery.of(context).size.height *.008,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
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
                                  borderSide: BorderSide(color: Color(0xffdedede))
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
                                  borderSide: BorderSide(color: Color(0xffdedede))
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
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(m.mainColor)
                    ),

                    child: Text("Sign UP",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                  onTap:(){
                    if(formKey.currentState.validate())
                      Navigator.pushNamed(context, '/userProfile');
                  },
                ),
                SizedBox(height: 100,)
              ],

            ),
          ),






         ],
       )),

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
                 //Navigator.pushNamed(context, '/signIn');
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