import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class yesOrNoQuestionaire extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return yesOrNoQuestionaireState();
  }
}
class yesOrNoQuestionaireState extends State<yesOrNoQuestionaire>{
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
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .035,
                  left: MediaQuery.of(context).size.width * .015,
                  right: MediaQuery.of(context).size.width * .015),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * .12,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Color(m.whiteMainColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    onPressed: (){Navigator.pushNamed(context, '/user2Main');},
                  ),
                  Text(
                    "Questionnaire",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  IconButton(icon: Icon(Icons.notifications),onPressed: (){
                    Navigator.pushNamed(context, '/notifiction');
                  },)
                ],
              ),
            ),
            Container(
              //height: MediaQuery.of(context).size.height*.1,
              width: MediaQuery.of(context).size.width,

              margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width*.05,
                left: MediaQuery.of(context).size.width*.05,
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
                        InkWell(
                            child: Text(" 5 ",style:TextStyle(color:Color(m.mainColor),fontSize: 14),),
                           onTap: (){Navigator.pushNamed(context, '/writingQuestionaire');}
                        ),
                        Text(" pages so far ",style:TextStyle(fontSize: 14),)
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,)
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height*.714,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                //right: MediaQuery.of(context).size.width*.035,
                // left: MediaQuery.of(context).size.width*.035
              ),


              child: ListView.builder(
                  padding: EdgeInsets.only(
                    top: 5,

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
                                          width: MediaQuery.of(context).size.width*.12,
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
                                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.w200,color:Colors.white),textAlign: TextAlign.center,),
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
                                        child: Text("Yes",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w200)),
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
                                        child: Text("No",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w200)),
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
                  Navigator.pushNamed(context, '/user2Main');
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
                  Navigator.pushNamed(context, '/user2Profile');
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