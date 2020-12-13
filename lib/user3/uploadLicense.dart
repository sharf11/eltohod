import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eltohod/main.dart';

class uploadlicense extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return uploadlicenseState();
  }
}
class uploadlicenseState extends State<uploadlicense>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
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
                    onPressed: (){Navigator.pop(context);},
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.7,
                    child: Text(
                      "Professional Practice License",
                      style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                  ),
                  IconButton(icon: Icon(Icons.notifications),onPressed: (){
                    Navigator.pushNamed(context, '/notifiction');
                  },)
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.08,),
            Container(
              height: MediaQuery.of(context).size.height*.57,
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child:  GridView.builder(
                padding: EdgeInsets.only(
                  left:  MediaQuery.of(context).size.width*.05,
                  right: MediaQuery.of(context).size.width*.05,
                ),
                primary: false,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 5,
                    childAspectRatio: 1.05/1.1
                ),
                itemBuilder: (context,index){
                  return Container(
                      margin: EdgeInsets.only(
                        left:  MediaQuery.of(context).size.width*.02,
                        right: MediaQuery.of(context).size.width*.002,
                      ),
                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(.1),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ]
                      ),
                      child: Image.asset('images/certificate.png',fit: BoxFit.fill,));
                },
                itemCount:4,

              ),
            ),

            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height*.05,
                width: MediaQuery.of(context).size.width*.45,
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.25,
                  right: MediaQuery.of(context).size.width*.25,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(m.mainColor),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(.1),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ]
                ),

                child:Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),


              ),
              onTap:(){
                Navigator.pushNamed(context, '/clinicDetails');
              },
            ),
          ],

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