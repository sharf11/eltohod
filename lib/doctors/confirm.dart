import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class confirm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return confirmState();
  }
}
class confirmState extends State<confirm>{
  myApp m=new myApp();
  @override
  Widget build(BuildContext context) {
 return Scaffold(

   body: Container(
     child: Column(
       children: [
         myAppBar("Confirmation"),
         SizedBox(height: MediaQuery.of(context).size.height*.02,),
         Container(
           height: MediaQuery.of(context).size.height * .25,
           margin: EdgeInsets.only(
             left: MediaQuery.of(context).size.width * .05,
             right: MediaQuery.of(context).size.width * .05

           ),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(15)),
           ),

           child: Stack(
             children: [
               Positioned(
                 top: MediaQuery.of(context).size.height * .1,
                 child: Container(
                   width: MediaQuery.of(context).size.width * .9,
                   decoration: BoxDecoration(
                     border: Border.all(width: 2.0,color: Colors.black12.withOpacity(.04)),
                       borderRadius: BorderRadius.all(Radius.circular(15)),
                     color:Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black12.withOpacity(.03),
                         spreadRadius: 4,
                         blurRadius: 4,
                         offset: Offset(3, 3), // changes position of shadow
                       ),
                     ],
                   ),
                   child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         SizedBox(
                           height: MediaQuery.of(context).size.height *
                               .055,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                               "Doctor ",
                               style: TextStyle(fontSize: 12),
                             ),
                             Text(
                               "Ahmed Mansour",
                               style: TextStyle(
                                   fontSize: 12,
                                   fontWeight: FontWeight.bold),
                             )
                           ],
                         ),
                         SizedBox(
                           height: MediaQuery.of(context).size.height *
                               .015,
                         ),
                         Text(
                           "M.B.B.Ch.,Ms ENT,MD ENT. Cairo University",
                           style: TextStyle(fontSize: 10),
                         ),
                         SizedBox(
                           height: MediaQuery.of(context).size.height *
                               .02,
                         ),

                       ],
                     ),
                   ),
                 ),

               Positioned(
                 left: MediaQuery.of(context).size.width * .34,
                 top: MediaQuery.of(context).size.height * .025,
                 child: Container(
                     width: MediaQuery.of(context).size.width * .22,
                     height: MediaQuery.of(context).size.width * .22,
                     decoration: BoxDecoration(
                         borderRadius:
                         BorderRadius.all(Radius.circular(1000)),
                         color: Colors.black12),
                     child: Image.asset(
                       'images/Ellipse 43.png',
                       fit: BoxFit.fill,
                     )),
               ),
             ],
           ),
         ),
         SizedBox(height: MediaQuery.of(context).size.height*.025,),
        Container(
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .05,
              right: MediaQuery.of(context).size.width * .05,
            top: MediaQuery.of(context).size.height*.005,
            bottom: MediaQuery.of(context).size.height*.005,

          ),
          //height: MediaQuery.of(context).size.height*.24,
          width: MediaQuery.of(context).size.width*.95,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height*.02,
            bottom: MediaQuery.of(context).size.height*.02,
            left: MediaQuery.of(context).size.width*.05,
            right: MediaQuery.of(context).size.width*.05,
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
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  ImageIcon(AssetImage("images/timeTable.png"),size: 27,color: Color(m.mainColor),),
                  SizedBox(width: MediaQuery.of(context).size.width*.045,),
                  Container(
                    height: 32,
                    width:1.0,
                    color: Colors.black45,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.03,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("02:30 PM",style: TextStyle(fontSize: 11),),
                     Text("Fri 12 October",style: TextStyle(fontSize: 11))
                   ],
                 )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.005,),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.black45,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.005,),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Icon(Icons.location_on,color: Color(m.mainColor),size: 27,),
                  SizedBox(width: MediaQuery.of(context).size.width*.045,),
                  Container(
                    height: 32,
                    width:1.0,
                    color: Colors.black45,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.03,),
                  Text("Jeda,Sultan Hessien st 1546 2nd F ",style: TextStyle(fontSize: 11),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.005,),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.black45,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.005,),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  ImageIcon(AssetImage("images/cash.png"),size: 27,color: Color(m.mainColor),),
                  SizedBox(width: MediaQuery.of(context).size.width*.045,),
                  Container(
                    height: 32,
                    width:1.0,
                    color: Colors.black45,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.03,),
                  Text("140 ",style: TextStyle(fontSize: 11),),
                ],
              ),

            ],
          ),

          ),

         SizedBox(height: MediaQuery.of(context).size.height*.05,),
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
                   color: Colors.grey.withOpacity(.3),
                   spreadRadius: 4,
                   blurRadius: 9,
                   offset: Offset(3, 3), // changes position of shadow
                 ),
               ],
             ),

             child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: ('Poppins-Medium'),)),


           ),
           onTap: (){Navigator.pushNamed(context, '/paymentMethod');},
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