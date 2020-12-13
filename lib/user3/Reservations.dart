import 'package:eltohod/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myAppBar.dart';

class reservation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return reservationState();
  }
}
class reservationState extends State<reservation>{
  myApp m=new myApp();
  List<String> days =["Today","Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"];
  String day;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
       day=days[0];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:Color(0xffdedede),
      body: Container(
        child: Column(
          children: [
           myAppBar("Reservations"),
            Container(
              width: MediaQuery.of(context).size.width*.30,
              alignment: Alignment.center,
              child: Center(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.none))),
                  elevation: 0,
                  value: day,
                  onChanged: (String Value) {
                    setState(() {
                      day = Value;
                    });
                  },
                  iconSize: 20,
                  items: days.map((String user) {
                    return  DropdownMenuItem<String>(
                      value: user,
                      child: Text(user, style:  TextStyle(fontSize:10,color: Colors.black),),
                    );
                  }).toList(),
                ),
              ),
            ),
            Expanded(

              child:ListView.builder(
                padding: EdgeInsets.only(
                  top: 0
                ),
                itemCount: 5,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(

                        bottom:  MediaQuery.of(context).size.height*.02,
                        right: MediaQuery.of(context).size.width*.03,
                        left: MediaQuery.of(context).size.width*.03,
                      ),

                      width: MediaQuery.of(context).size.width*.95,
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height*.02,
                        bottom: MediaQuery.of(context).size.height*.02,
                        left: MediaQuery.of(context).size.width*.05,
                        right: MediaQuery.of(context).size.width*.05,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.2),
                            spreadRadius: 4,
                            blurRadius: 9,
                            offset: Offset(3, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width*.02,),
                              ImageIcon(AssetImage("images/user.png"),color: Color(m.mainColor),size: 27,),
                              SizedBox(width: MediaQuery.of(context).size.width*.03,),
                              Container(
                                height: 32,
                                width:1.5,
                                color: Colors.black45,
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width*.03,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Ahmed mohamed",style: TextStyle(fontSize: 11),),
                                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                  Text("+966125475574",style: TextStyle(fontSize: 11))
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*.005,),
                          Container(
                            height: 1.5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black54,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*.005,),
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width*.02,),
                              ImageIcon(AssetImage("images/timeTable.png"),color: Color(m.mainColor),size: 27,),
                              SizedBox(width: MediaQuery.of(context).size.width*.03,),
                              Container(
                                height: 32,
                                width: 1.5,
                                color: Colors.black54,
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width*.03,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                    Text("02:30 PM",style: TextStyle(fontSize: 11),),
                                      SizedBox(width: MediaQuery.of(context).size.width*.05,),
                                    Text("03:00 PM",style: TextStyle(fontSize: 11),),
                                  ],),
                                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                                  Text("Fri 12 October",style: TextStyle(fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*.005,),
                          Container(
                            height: 1.5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black54,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*.005,),
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width*.02,),
                              Icon(Icons.location_on,color: Color(m.mainColor),size: 27,),
                              SizedBox(width: MediaQuery.of(context).size.width*.03,),
                              Container(
                                height:32,
                                width: 1.5,
                                color: Colors.black54,
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width*.03,),
                              Text("In Clinic",style: TextStyle(fontSize: 11),),
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*.03,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*.04,
                                width: MediaQuery.of(context).size.width*.3,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Color(m.mainColor)
                                ),

                                child: FlatButton(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold)),
                                      Icon(Icons.close,size: 23,color: Colors.white,)
                                    ],
                                  ),
                                  onPressed:null,
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height*.04,
                                width: MediaQuery.of(context).size.width*.3,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Color(m.mainColor)
                                ),

                                child: FlatButton(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Call",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold)),
                                      Icon(Icons.call,size: 23,color: Colors.white,)
                                    ],
                                  ),
                                  onPressed:null,
                                ),
                              ),
                            ],
                          ),



                        ],
                      ),

                    );
                  }

              )
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