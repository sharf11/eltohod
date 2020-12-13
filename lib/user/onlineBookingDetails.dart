import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onlineBookingDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return onlineBookingDetailsState();
  }
}
class onlineBookingDetailsState extends State<onlineBookingDetails>{
  List<String> times=["12:01 PM","12:30 PM","01:01 PM","12:05 PM","12:31 PM","01:00 PM","12:10 PM","12:15 PM","01:07 PM"];
  var selectedItem;
  var   bookType;
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
             myAppBar("Details"),
              Container(

                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
                    Container(
                      margin:EdgeInsets.only(
                        right: MediaQuery.of(context).size.width*.05,
                        left: MediaQuery.of(context).size.width*.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: MediaQuery.of(context).size.height*.09,
                              width: MediaQuery.of(context).size.width*.4,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
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

                              child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("In Door",style: TextStyle(color: Colors.black,fontSize: 15,fontFamily: ("Poppins-Medium"))),
                                    Text("(clinic)",style: TextStyle(color: Colors.black,fontSize: 12))
                                  ],),
                            ),
                            onTap: (){Navigator.pushNamed(context, '/bookingDetails');},
                          ),
                          GestureDetector(
                            child: Container(
                              height: MediaQuery.of(context).size.height*.09,
                              width: MediaQuery.of(context).size.width*.4,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                    border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                                  color: Color(m.mainColor),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    spreadRadius: 4,
                                    blurRadius: 9,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ],
                              ),

                              child: Text("Online",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: ("Poppins-Medium"))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Container(
                        margin:EdgeInsets.only(
                          right: MediaQuery.of(context).size.width*.05,
                          left: MediaQuery.of(context).size.width*.05,
                        ),
                        height: MediaQuery.of(context).size.height*.001,
                        color:Colors.black
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Container(
                      margin:EdgeInsets.only(
                        right: MediaQuery.of(context).size.width*.05,
                        left: MediaQuery.of(context).size.width*.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: MediaQuery.of(context).size.height*.09,
                              width: MediaQuery.of(context).size.width*.28,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: bookType=='video'?Color(m.mainColor):Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                                boxShadow: [
                                  BoxShadow(
                                    color: bookType=='video'?Colors.grey.withOpacity(.5):Colors.black12.withOpacity(.04),
                                    spreadRadius: 4,
                                    blurRadius: 9,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ],
                              ),

                              child: Text("Video Call",style: TextStyle(color: bookType=='video'?Colors.white:Colors.black,fontSize: 13,fontFamily: ("Poppins-Medium"))
                                ,textAlign: TextAlign.center,),


                            ),
                            onTap: (){
                              setState(() {
                                bookType="video";
                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: MediaQuery.of(context).size.height*.09,
                              width: MediaQuery.of(context).size.width*.28,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: bookType=='voice'?Color(m.mainColor):Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                    border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                                boxShadow: [
                                  BoxShadow(
                                    color: bookType=='voice'?Colors.grey.withOpacity(.5):Colors.black12.withOpacity(.04),
                                    spreadRadius: 4,
                                    blurRadius: 9,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ],
                              ),

                              child:  Text("Voice Call",style: TextStyle(color: bookType=='voice'?Colors.white:Colors.black,fontSize: 13,fontFamily: ("Poppins-Medium"))
                                    ,textAlign: TextAlign.center),
                            ),
                            onTap: (){
                              setState(() {
                                bookType="voice";
                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: MediaQuery.of(context).size.height*.09,
                              width: MediaQuery.of(context).size.width*.28,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color:  bookType=='chat'?Color(m.mainColor):Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                                boxShadow: [
                                  BoxShadow(
                                    color: bookType=='chat'?Colors.grey.withOpacity(.5):Colors.black12.withOpacity(.04),
                                    spreadRadius: 4,
                                    blurRadius: 9,
                                    offset: Offset(3, 3), // changes position of shadow
                                  ),
                                ],
                              ),

                              child:  Text("Chat",style: TextStyle(color: bookType=='chat'?Colors.white:Colors.black,fontSize: 13,fontFamily: ("Poppins-Medium"))),
                            ),
                            onTap: (){
                              setState(() {
                                bookType="chat";
                              });
                            },
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Container(
                        margin:EdgeInsets.only(
                          right: MediaQuery.of(context).size.width*.05,
                          left: MediaQuery.of(context).size.width*.05,
                        ),
                        height: MediaQuery.of(context).size.height*.001,
                        color:Colors.black
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height*.33,
                      width: MediaQuery.of(context).size.width,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        // border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(.03),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(3, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child:  GridView.builder(

                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width*.05,
                            left: MediaQuery.of(context).size.width*.05,
                            top: MediaQuery.of(context).size.height*.02,
                            bottom: MediaQuery.of(context).size.height*.02
                        ),
                        primary: false,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 0,
                            childAspectRatio: 1.3/.63
                        ),
                        itemBuilder: (context,index){

                          return Container(
                            height: MediaQuery.of(context).size.height*.09,
                            width: MediaQuery.of(context).size.width*.28,
                            margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width*.01,
                              right: MediaQuery.of(context).size.width*.01,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: selectedItem==times[index]?Color(m.mainColor):Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(width: 1.5,color: Colors.black12.withOpacity(.05)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(.03),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ],
                            ),

                            child:ListTile(onTap: (){
                              setState(() {
                                selectedItem = times[index];
                              });
                            },title: Text(times[index],style: TextStyle(color:selectedItem==times[index]?Colors.white:Colors.black,fontSize: 13,fontFamily: ('Poppins-Medium'),letterSpacing: .5)
                              ,textAlign: TextAlign.center,
                            ),),
                          );
                        },
                        itemCount:times.length,

                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height*.045,
                        width: MediaQuery.of(context).size.width*.45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(m.mainColor),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              spreadRadius: 4,
                              blurRadius: 9,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),

                        child:  Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: ("Poppins-Medium"))),

                      ),
                      onTap: (){Navigator.pushNamed(context, '/paymentOnline');},
                    ),
                  ],
                ),
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