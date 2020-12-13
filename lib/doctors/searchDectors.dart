

import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class searchDectors extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return searchDectorsState();
  }
}
class searchDectorsState extends State<searchDectors>{
  List<String> names=["Ahmed Mansour","Hanan Mousa","Mohamed tarek","Ahmed Hassan"];
  List<String> images=["images/Ellipse 43.png","images/Ellipse 45.png","images/Ellipse 46.png","images/Ellipse 44.png"];
  myApp m=new myApp();
  String filter;
  String choice;
  @override
  void initState() {
    setState(() {
      filter = "Most";
    });
    super.initState();
  }

  void radioButtonChanges(String value) {
    setState(() {
      filter = value;
      switch (value) {
        case 'Most':
          choice = value;
          break;
        case 'Price_Low':
          choice = value;
          break;
        case 'Price_High':
          choice = value;
          break;
        case 'Nearest':
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
     body: Container(
       child: Container(
         child: Column(
           children: [
             Container(
               padding: EdgeInsets.only(
                   top: MediaQuery.of(context).size.height*.06,
                   left: MediaQuery.of(context).size.width*.03,
                   right: MediaQuery.of(context).size.width*.03,
                   bottom: MediaQuery.of(context).size.height*.005,
               ),
               alignment: Alignment.center,
               //height: MediaQuery.of(context).size.height*.13,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(15),
                       bottomRight:  Radius.circular(15)
                   ),
                   color: Color(m.whiteMainColor)
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   IconButton(icon: Icon(Icons.arrow_back_ios,),
                   onPressed: (){Navigator.pop(context);},
                   ),
                   Container(
                     child: Column(
                       children: [
                         Text("Location",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                         InkWell(
                           child: Row(
                             children: [
                               Text("jeda",style: TextStyle(fontSize: 10,)),
                               Icon(Icons.arrow_drop_down_outlined)
                             ],
                           ),
                           onTap: (){Navigator.pushNamed(context, '/selectCity');},
                         )
                       ],
                     ),),
                   IconButton(icon: Icon(Icons.notifications),
                   onPressed: (){Navigator.pushNamed(context, '/notifiction');},
                   )
                 ],
               ),
             ),
             Container(
               margin: EdgeInsets.only(
                 left: MediaQuery.of(context).size.width*.05,
                 right:  MediaQuery.of(context).size.width*.05,
               ),
               child: Column(
                 children: [
                   SizedBox( height: MediaQuery.of(context).size.height*.02,),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.all(Radius.circular(10)),
                       color: Colors.black12,
                     ),
                     child: TextFormField(
                       decoration: InputDecoration(
                         contentPadding: EdgeInsets.only(right: 15,left: 15,top: 0,bottom: 0),
                         enabledBorder: new OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(color: Colors.black12)
                         ),
                         focusedBorder: new OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(color: Colors.black12)
                         ),

                         hintText: "Search By Doctor Name",
                         hintStyle: TextStyle(fontSize: 14),
                         prefixIcon: Icon(Icons.search_outlined,size: 27,),
                     ),
                     ),
                   ),
                   SizedBox( height: MediaQuery.of(context).size.height*.015,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       GestureDetector(
                         child: Container(
                           width: MediaQuery.of(context).size.width*.27,
                           height: 42.5,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(10))
                               ,color: Color(0xffeeeef0)
                           ),
                           padding: EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Icon(Icons.swap_vert,size: 20,),

                               Text("sort",style: TextStyle(fontSize: 14,color:Colors.black54),),


                             ],
                           ),
                         ),
                         onTap: btnSheet,
                       ),
                       GestureDetector(
                         child: Container(
                           width: MediaQuery.of(context).size.width*.27,
                           height: 42.5,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(10))
                               ,color: Color(0xffEEEEF0)
                           ),
                           padding: EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Icon(Icons.filter_list_alt,size: 20,),
                               Text("filter",style: TextStyle(fontSize: 14,color:Colors.black54),)
                             ],
                           ),
                         ),
                         onTap: (){Navigator.pushNamed(context, "/filter");},
                       ),
                       GestureDetector(
                         child: Container(
                           width: MediaQuery.of(context).size.width*.27,
                           height: 42.5,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(10))
                               ,color: Color(0xffeeeef0)
                           ),
                           padding: EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Icon(Icons.location_on,size: 20,),
                               Text("map",style: TextStyle(fontSize: 14,color:Colors.black54),)
                             ],
                           ),
                         ),
                         onTap: (){Navigator.pushNamed(context, "/map");},
                       ),

                     ],
                   ),
                   SizedBox( height: MediaQuery.of(context).size.height*.015,),
                 ],
               ),
             ),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(
                      top:0
                  ),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context,int index){
                    return ListTile(
                      title:Container(
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height*.01
                        ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2.0,color: Colors.grey.withOpacity(.09)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color:Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(.05),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(3, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    color:Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(.1),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),

                                  child: Row(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.height*.09,
                                        width:MediaQuery.of(context).size.height*.09,
                                        margin: EdgeInsets.only(
                                          left: MediaQuery.of(context).size.width*.03,
                                          right: MediaQuery.of(context).size.width*.03,
                                          top: MediaQuery.of(context).size.height*.01,
                                          bottom: MediaQuery.of(context).size.height*.01,
                                        ),
                                        child: Image.asset(images[index].toString(),
                                          height: MediaQuery.of(context).size.height*.09,
                                          width:MediaQuery.of(context).size.height*.09,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top:  MediaQuery.of(context).size.height*.015,
                                          bottom:  MediaQuery.of(context).size.height*.015,
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text("Doctor ",style: TextStyle(fontSize: 11),),
                                                Text("${names[index]}",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                            Text("special at Autism fo children",style: TextStyle(fontSize: 9),),
                                            SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons.star,size: 10,),
                                                    Icon(Icons.star,size: 10,),
                                                    Icon(Icons.star,size: 10,),
                                                    Icon(Icons.star_border,size: 10,),
                                                    Icon(Icons.star_border,size: 10,),
                                                  ],
                                                ),
                                                Container(
                                                  width:MediaQuery.of(context).size.width*.05 ,
                                                ),
                                                Text("From 200 visitor",style: TextStyle(fontSize: 8),),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: (){Navigator.pushNamed(context, '/doctorProfile');},
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width*.03,
                                    right: MediaQuery.of(context).size.width*.03,
                                    top: MediaQuery.of(context).size.height*.015,
                                    bottom: MediaQuery.of(context).size.height*.02
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on,size: 19,),
                                        SizedBox(width: 5,),
                                        Text(" Jeda ,sultan HEssien st,1546ndF",style: TextStyle(fontSize: 9),)
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                    Row(
                                      children: [
                                        ImageIcon(AssetImage("images/cash.png"),size: 19,),
                                        SizedBox(width: 5,),
                                        Text(" 140 (In Door)",style: TextStyle(fontSize: 9),)
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                        ImageIcon(AssetImage("images/cash.png"),size: 19,color: Colors.white,),
                                        SizedBox(width: 5,),
                                        Text(" 100 (Online)",style: TextStyle(fontSize: 9),)
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          child: Container(
                                            height: MediaQuery.of(context).size.height*.032,
                                            width: MediaQuery.of(context).size.width*.27,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              color:Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black12.withOpacity(.05),
                                                  spreadRadius: 4,
                                                  blurRadius: 4,
                                                  offset: Offset(3, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),

                                            child: Text("Avilable Today ",style: TextStyle(fontSize: 8,)),
                                          ),
                                        ),
                                        GestureDetector(
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*.032,
                                              width: MediaQuery.of(context).size.width*.25,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                                color:Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black12.withOpacity(.05),
                                                    spreadRadius: 4,
                                                    blurRadius: 4,
                                                    offset: Offset(3, 3), // changes position of shadow
                                                  ),
                                                ],
                                              ),

                                              child: Text("Book Now ",style: TextStyle(fontSize: 8)),
                                            ),
                                            onTap: (){Navigator.pushNamed(context, '/bookingDetails');}
                                        ),
                                        GestureDetector(
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*.032,
                                              width: MediaQuery.of(context).size.width*.25,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                                color: Color(m.mainColor),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(.2),
                                                    spreadRadius: 4,
                                                    blurRadius: 4,
                                                    offset: Offset(3, 3), // changes position of shadow
                                                  ),
                                                ],
                                              ),

                                              child: Text("Online Booking",style: TextStyle(color:Colors.white,fontSize: 8)),
                                            ),
                                            onTap: (){Navigator.pushNamed(context, '/onlineBookingDetails');}
                                        ),
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ],
                          )
                      ),










                    );})
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
  void btnSheet(){
    showMaterialModalBottomSheet(
        context: context,
        builder: (context, scrollController) {
          return Container(
            height: MediaQuery.of(context).size.height*.33,
            color: Color(0xff92989b),
            child: Container(
              height: MediaQuery.of(context).size.height*.33,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*.025,
                  bottom: MediaQuery.of(context).size.height*.02,
                  left: MediaQuery.of(context).size.width*.05,
                  right: MediaQuery.of(context).size.width*.05
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                ),
                color:Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.05),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("sort",style:TextStyle(fontWeight: FontWeight.bold) ,),

                      Text("reset",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(m.mainColor)),),
                    ],),
                  SizedBox(height: MediaQuery.of(context).size.height*.015,),
                  Container(
                    height: MediaQuery.of(context).size.height*.001,
                    color: Colors.black,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.03,),
                  Container(
                    height:MediaQuery.of(context).size.height*.050,
                    child: Row(
                      children: [
                        Radio(value:'Most', groupValue: filter, onChanged:(value){
                          setState(() {
                            filter = 'Most';
                          });
                        },activeColor: Color(m.mainColor),),
                        Text("  Most Recommended",style: TextStyle(fontSize: 12),),
                      ],),
                  ),
                  Container(
                    height:MediaQuery.of(context).size.height*.050,
                    child: Row(

                      children: [
                        Radio(value: 'Price_Low', groupValue: filter, onChanged: (value){
                          setState(() {
                            filter = 'Price_Low';
                          });
                        },activeColor: Color(m.mainColor)),
                        Text("   Price Low To High ",style: TextStyle(fontSize: 12),),
                      ],),
                  ),
                  Container(
                    height:MediaQuery.of(context).size.height*.050,
                    child: Row(

                      children: [
                        Radio(value: 'Price_High', groupValue: filter, onChanged: (value){
                          setState(() {
                            filter = 'Price_High';
                          });
                        },activeColor: Color(m.mainColor)),
                        Text("   Price High To Low",style: TextStyle(fontSize: 12),),
                      ],),
                  ),
                  Container(
                    height:MediaQuery.of(context).size.height*.050,
                    child: Row(

                      children: [
                        Radio(value: 'Nearest', groupValue: filter, onChanged: (value){
                          setState(() {
                            filter = 'Nearest';
                          });
                        },activeColor: Color(m.mainColor)),
                        Text("    Nearest By My Location",style: TextStyle(fontSize: 12),),
                      ],),
                  ),

                ],
              ),
            ),
          );
        }
    );
  }
}