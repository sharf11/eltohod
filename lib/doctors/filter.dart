import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class filter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return filterState();
  }
}
class filterState extends State<filter>{
  myApp m=new myApp();
  List<String> _entity = [];
  List<String> _gender = [];
  List<String> _available = [];
  List<String> _title = [];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: Container(
         child: Column(
           children: [
            myAppBar("Filter"),
          Expanded(

            child: ListView(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*.01
              ),
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*.9,
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width*.03,
                            left: MediaQuery.of(context).size.width*.03,
                            top: MediaQuery.of(context).size.height*.01,
                            bottom:  MediaQuery.of(context).size.height*.005
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(.05),
                              spreadRadius: 4,
                              blurRadius: 3,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],

                        ),
                        child: Column(
                          children: [
                            Text("Entity",style: TextStyle(fontSize: 17,color: Color(m.mainColor),fontWeight: FontWeight.bold),),
                            SizedBox(  height: MediaQuery.of(context).size.height*.01,),
                            Container(
                              height: MediaQuery.of(context).size.height*.001,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black,
                            ),
                            SizedBox(  height: MediaQuery.of(context).size.height*.02,),
                            CheckboxGroup(
                              orientation:GroupedButtonsOrientation.HORIZONTAL ,
                              activeColor: Color(m.mainColor),
                              labels: <String>[
                                "Clinic",
                                "Online",
                              ],
                              labelStyle: TextStyle(fontFamily: "Poppins-Medium",fontSize: 14),
                              itemBuilder: (checkBox, label, index) {
                                return Container(
                                  width: MediaQuery.of(context).size.width*.37,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      checkBox,
                                      label,
                                      SizedBox(width: 30,)
                                    ],),
                                );
                              },
                              checked: _entity,
                              onChange: (bool isChecked, String label, int index) =>
                                  print("isChecked: $isChecked   label: $label  index: $index"),
                              onSelected: (List selected) => setState(() {
                                if (selected.length > 1) {
                                  selected.removeAt(0);
                                } else {
                                  print("only one");
                                }
                                _entity = selected;
                              }),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height*.025,),
                      Container(
                        width: MediaQuery.of(context).size.width*.9,
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width*.03,
                            left: MediaQuery.of(context).size.width*.03,
                            top: MediaQuery.of(context).size.height*.01,
                            bottom:  MediaQuery.of(context).size.height*.005
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(.05),
                              spreadRadius: 4,
                              blurRadius: 3,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("Gender",style: TextStyle(fontSize: 16,color: Color(m.mainColor),fontWeight: FontWeight.bold),),
                            SizedBox(  height: MediaQuery.of(context).size.height*.01,),
                            Container(
                              height: MediaQuery.of(context).size.height*.001,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black,
                            ),
                            SizedBox(  height: MediaQuery.of(context).size.height*.02,),
//                          Row(
//                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: [
//                              Row(
//                                children: [
//                                  Checkbox(value: false, onChanged: null),
//                                  Text(" Female",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),)
//                                ],
//                              ),
//                              Row(
//                                children: [
//                                  Checkbox(value: false, onChanged: null),
//                                  Text(" Male",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),)
//                                ],
//                              )
//                            ],
//                          )


                            CheckboxGroup(
                              orientation:GroupedButtonsOrientation.HORIZONTAL ,
                              activeColor: Color(m.mainColor),
                              labels: <String>[
                                "Female",
                                "Male",
                              ],
                              labelStyle: TextStyle(fontFamily: "Poppins-Medium",fontSize: 14),
                              itemBuilder: (checkBox, label, index) {
                                return Container(
                                  width: MediaQuery.of(context).size.width*.37,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      checkBox,
                                      label,
                                      SizedBox(width: 20,)
                                    ],),
                                );
                              },
                              checked: _gender,
                              onChange: (bool isChecked, String label, int index) =>
                                  print("isChecked: $isChecked   label: $label  index: $index"),
                              onSelected: (List selected) => setState(() {
                                if (selected.length > 1) {
                                  selected.removeAt(0);
                                  print('selected length  ${selected.length}');
                                } else {
                                  print("only one");
                                }
                                _gender = selected;
                              }),
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height*.025,),
                      Container(
                        width: MediaQuery.of(context).size.width*.9,
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width*.015,
                            top: MediaQuery.of(context).size.height*.01,
                            bottom:  MediaQuery.of(context).size.height*.005
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(.05),
                              spreadRadius: 4,
                              blurRadius: 3,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],

                        ),
                        child: Column(
                          children: [
                            Text("Availability",style: TextStyle(fontSize: 16,color: Color(m.mainColor),fontWeight: FontWeight.bold),),
                            SizedBox(  height: MediaQuery.of(context).size.height*.01,),
                            Container(
                              height: MediaQuery.of(context).size.height*.001,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black,
                            ),
                            SizedBox(  height: MediaQuery.of(context).size.height*.02,),
                            CheckboxGroup(padding: EdgeInsets.all(0.0),margin: EdgeInsets.all(0.0),
                              orientation:GroupedButtonsOrientation.HORIZONTAL ,
                              activeColor: Color(m.mainColor),
                              labels: <String>[
                                "Today",
                                "Any Day",
                                "Tomorrow",
                              ],
                              labelStyle: TextStyle(fontFamily: "Poppins-Medium",fontSize: 12 ),
                              itemBuilder: (checkBox, label, index) {
                                return   Row(children: [
                                    checkBox,
                                     label,

                                  ],)
                                ;
                              },
                              checked: _available,
                              onChange: (bool isChecked, String label, int index) =>
                                  print("isChecked: $isChecked   label: $label  index: $index"),
                              onSelected: (List selected) => setState(() {
                                if (selected.length > 1) {
                                  selected.removeAt(0);
                                  print('selected length  ${selected.length}');
                                } else {
                                  print("only one");
                                }
                                _available = selected;
                              }),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height*.025,),
                      Container(
                        width: MediaQuery.of(context).size.width*.9,
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width*.03,
                            left: MediaQuery.of(context).size.width*.03,
                            top: MediaQuery.of(context).size.height*.01,
                            bottom:  MediaQuery.of(context).size.height*.005
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(.05),
                              spreadRadius: 4,
                              blurRadius: 3,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("Title",style: TextStyle(fontSize: 16,color: Color(m.mainColor),fontWeight: FontWeight.bold),),
                            SizedBox(  height: MediaQuery.of(context).size.height*.01,),
                            Container(
                              height: MediaQuery.of(context).size.height*.001,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black,
                            ),
                            SizedBox(  height: MediaQuery.of(context).size.height*.02,),
                            CheckboxGroup(
                              orientation:GroupedButtonsOrientation.HORIZONTAL ,
                              activeColor: Color(m.mainColor),
                              labels: <String>[
                                "Professor",
                                "Lecturer",
                              ],
                              labelStyle: TextStyle(fontFamily: "Poppins-Medium",fontSize: 14),
                              itemBuilder: (checkBox, label, index) {
                                return Container(
                                  width: MediaQuery.of(context).size.width*.385,
                                  child: Row(children: [
                                    checkBox,
                                    label,
                                    SizedBox(width: 10,)

                                  ],),
                                );
                              },
                              checked: _title,
                              onChange: (bool isChecked, String label, int index) =>
                                  print("isChecked: $isChecked   label: $label  index: $index"),
                              onSelected: (List selected) => setState(() {
                                if (selected.length > 1) {
                                  selected.removeAt(0);
                                  print('selected length  ${selected.length}');
                                } else {
                                  print("only one");
                                }
                                _title = selected;
                              }),
                            ),
                            CheckboxGroup(
                              orientation:GroupedButtonsOrientation.HORIZONTAL ,
                              activeColor: Color(m.mainColor),
                              labels: <String>[
                                "Consultant",
                                "Specialist",
                              ],
                              labelStyle: TextStyle(fontFamily: "Poppins-Medium",fontSize: 14),
                              itemBuilder: (checkBox, label, index) {
                                return Container(
                                  width: MediaQuery.of(context).size.width*.385,
                                  child: Row(children: [
                                    checkBox,
                                    label,
                                    SizedBox(width: 0,)
                                  ],),
                                );
                              },
                              checked: _title,
                              onChange: (bool isChecked, String label, int index) =>
                                  print("isChecked: $isChecked   label: $label  index: $index"),
                              onSelected: (List selected) => setState(() {
                                if (selected.length > 1) {
                                  selected.removeAt(0);
                                  print('selected length  ${selected.length}');
                                } else {
                                  print("only one");
                                }
                                _title = selected;
                              }),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height*.05,),
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height*.05,
                          margin: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width*.25,
                              left: MediaQuery.of(context).size.width*.25
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(m.mainColor),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(.05),
                                spreadRadius: 4,
                                blurRadius: 3,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),

                          child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),


                        ),
                        onTap: (){Navigator.pushNamed(context, '/searchDectors');},
                      ),
                      SizedBox(height: 50,),
                    ],
                  ),
                )
              ],
            )
         )

           ],
         ),
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