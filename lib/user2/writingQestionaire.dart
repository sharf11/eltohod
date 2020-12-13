import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class writingQuestionaire extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return writingQuestionaireState();
  }
}
class writingQuestionaireState extends State<writingQuestionaire>{
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
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: [
           myAppBar("Questionaire"),
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
                        Text(" 3 ",style:TextStyle(color:Color(m.mainColor),fontSize: 16),),
                        Text( " out of ",style:TextStyle(fontSize: 16),),
                        InkWell(
                            child: Text(" 5 ",style:TextStyle(color:Color(m.mainColor),fontSize: 16),),
                            onTap: (){Navigator.pushNamed(context, '/endQuestionaire');}
                        ),
                        Text(" pages so far ",style:TextStyle(fontSize: 16),)
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
              margin: EdgeInsets.only(
              //  right: MediaQuery.of(context).size.width*.05,
               // left: MediaQuery.of(context).size.width*.05,
              ),
              child: ListView.builder(
                padding: EdgeInsets.only(
                  top: 5
                ),
                  itemCount: questions.length,
                  itemBuilder: (BuildContext context,int index){
                    counter=index;
                    return ListTile(
                        title: Container(
                          margin: EdgeInsets.only(top:index>0? MediaQuery.of(context).size.height*.01:0,
                            bottom: index==questions.length-1?MediaQuery.of(context).size.height*.1:0,
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
                                width: MediaQuery.of(context).size.width,


                                alignment: Alignment.center,
                                child: TextFormField(

                                  maxLines: 3,
                                  minLines: 2,
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
                                          borderSide: BorderSide(color: Colors.white)
                                      ),
                                      focusedBorder:  new OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: Colors.white)
                                      ),
                                      focusedErrorBorder:new OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(color: Colors.white)
                                      ),
                                      errorBorder:new OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: Colors.white)
                                      ),
                                      hintText: ("write your Answer Here"),
                                      hintStyle: TextStyle(fontSize: 11)
                                  ),
                                  controller: null,
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