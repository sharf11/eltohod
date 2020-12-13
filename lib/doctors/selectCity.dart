import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class selectCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return selectCityState();
  }
}

class selectCityState extends State<selectCity> {
  List<String> city = [
    "Macca",
    "Al Madinah",
    "Riyadh",
    "Al Dmmam",
    "Tabuk",
    "Jiddah",
    "Abha",
    "Mishah",
    "Burayah",
    "Al Sulayyil",
    "Rafha"
  ];
  myApp m = new myApp();
  int selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
           myAppBar("Select City"),
            Container(
                height: MediaQuery.of(context).size.height * .775,

                child: ListView.builder(
                  padding: EdgeInsets.zero,
                    itemCount: city.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.only(
                          bottom: index==city.length-1?50:0
                        ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           InkWell(
                             child: Column(
                               children: [
                                 SizedBox( height: MediaQuery.of(context).size.height * .02,),
                                 Container(
                                   padding: EdgeInsets.only(
                                     left: MediaQuery.of(context).size.width*.03,
                                     right:  MediaQuery.of(context).size.width*.03,
                                   ),
                                   child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text("${city[index]}",style: TextStyle(fontSize: 14),),
                                         selected==index? check(selected==index,):Icon(Icons.check,color: Colors.white,size: 30,),
                                       ],),
                                 ),
                                 SizedBox( height: MediaQuery.of(context).size.height * .02,),
                               ],
                             ),
                             onTap: (){
                               setState(() {
                                 selected=index;
                               });
                             },
                           ),
                              Container(
                                height: 2,
                                width:MediaQuery.of(context).size.width ,
                                margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width*.03,
                                  right:  MediaQuery.of(context).size.width*.03,
                                ),
                                color: Colors.black54,
                              )
                            ],
                          ),
                        );
                    }))
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
  Widget check(val){
    if(val==true){
      return Icon(Icons.check,color: Color(m.mainColor),size: 30,);
    }
    else return Text("");
  }
}
