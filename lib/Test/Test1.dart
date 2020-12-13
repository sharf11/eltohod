import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class test1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return test1State();
  }
}
class test1State extends State<test1>{
  List<String> questions=[
    'Can the child speak using pharses od sentences?',
  'Has the child over used strange phrases or repeated the same words over and over again the same way',
    'Has the child over used strongphrases or repetes the same words ',
    'Can the child speak using pharses od sentences?',
    'Has the child over used strange phrases or repeated the same words over and over again the same way',
    'Has the child over used strongphrases or repetes the same words ',
  ];

   int counter;
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Column(
        children: [
          myAppBar("Diagnostic Test"),
            Container(
             //height: MediaQuery.of(context).size.height*.1,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width*.035,
            left: MediaQuery.of(context).size.width*.035,
            ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                     children: [
                       Text(" 3 ",style:TextStyle(color:Color(m.mainColor),fontSize: 14),),
                       Text( " out of ",style:TextStyle(fontSize: 14),),
                       Text(" 4 ",style:TextStyle(color:Color(m.mainColor),fontSize: 14
                         ,),),
                       Text(" pages so far ",style:TextStyle(fontSize: 14),)
                     ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                  Container(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.5,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" 1 ",style:TextStyle(color:Color(m.mainColor),fontSize: 14),),
                        Text(" 2 ",style:TextStyle(color:Color(m.mainColor),fontSize: 14),),
                        Text(" 3 ",style:TextStyle(color:Color(m.mainColor),fontSize: 14),),
                        Text(" 4 ",style:TextStyle(fontSize: 16),),
                        InkWell(
                            child: Text(" 5 ",style:TextStyle(fontSize: 14),),
                          onTap: (){Navigator.pushNamed(context, '/endTest');},
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *.002,
                   color: Colors.black54,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.015,),
                ],
              ),
            ),

         Expanded(
           child: ListView.builder(
                padding: EdgeInsets.only(
                  top: 0,

                ),
                  itemCount: questions.length,
                  itemBuilder: (BuildContext context,int index){
                    counter=index;
                    return ListTile(
                        title:Container(
                          margin: EdgeInsets.only(top:index>0? MediaQuery.of(context).size.height*.01:0,
                          bottom: index==questions.length-1?MediaQuery.of(context).size.height*.05:0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            color:Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(.05),
                                spreadRadius: 4,
                                blurRadius: 9,
                                offset: Offset(3, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color:Color(m.mainColor),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(.1),
                                      spreadRadius: 4,
                                      blurRadius: 9,
                                      offset: Offset(3, 3), // changes position of shadow
                                    ),
                                  ],

                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                        child: Container(
                                          height: MediaQuery.of(context).size.height*.05,
                                          width: MediaQuery.of(context).size.width*.1,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                bottomRight: Radius.circular(20)
                                            )
                                            ,color:Color(0xfffdb900),
                                          ),
                                          child: Center(child: Text("${counter+1}",style: TextStyle(fontSize: 17),)),
                                        )
                                    ),
                                   Container(
                                     padding: EdgeInsets.only(
                                         top:MediaQuery.of(context).size.height*.03,
                                       bottom: MediaQuery.of(context).size.height*.03,
                                       left: MediaQuery.of(context).size.width*.1,
                                       right: MediaQuery.of(context).size.width*.07


                                     ),


                                          alignment: Alignment.center,
                                          child: Text(questions[index],
                                            style: TextStyle(fontSize: 17,fontFamily: "Poppins-SemiBold",color:Colors.white),textAlign: TextAlign.center,),
                                        )

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height*.05,
                                      width: MediaQuery.of(context).size.width*.33,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          color: Color(m.mainColor),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(.1),
                                            spreadRadius: 4,
                                            blurRadius: 9,
                                            offset: Offset(3, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),

                                      child: FlatButton(
                                        child: Text("Yes",style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: "Poppins-SemiBold")),
                                        onPressed: null,
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height*.05,
                                      width: MediaQuery.of(context).size.width*.33,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                        color:Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12.withOpacity(.05),
                                            spreadRadius: 4,
                                            blurRadius: 9,
                                            offset: Offset(3, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),

                                      child: FlatButton(
                                        child: Text("No",style: TextStyle(color: Colors.black,fontSize: 17,fontFamily: "Poppins-SemiBold")),
                                        onPressed: null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*.02,)
                            ],
                          ),
                        )

                    );
                  }
              ),
         ),


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