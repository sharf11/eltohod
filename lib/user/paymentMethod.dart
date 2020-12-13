import 'package:eltohod/main.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paymentMethod extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return paymentMethodState();
  }
}
class paymentMethodState extends State<paymentMethod>{
  myApp m=new myApp();
  String paymentMethod;
  String choice;
  @override
  void initState() {
    setState(() {
      paymentMethod = "cach in Clinic";
    });
    super.initState();
  }

  void radioButtonChanges(String value) {
    setState(() {
      paymentMethod = value;
      switch (value) {
        case 'cach in Clinic':
          choice = value;
          break;
        case 'Bank Transfer':
          choice = value;
          break;
        case 'With pay pal':
        choice = value;
        break;
        case 'Online Payment':
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
      backgroundColor: Color(0xfffefefe),
      body: Container(
        child: Column(
          children: [
            myAppBar("Payment Method"),
            SizedBox(height: MediaQuery.of(context).size.height*.07,),
          Container(
                height: MediaQuery.of(context).size.height*.052,
                width: MediaQuery.of(context).size.width*.8,
                padding: EdgeInsets.only(
                  right:  MediaQuery.of(context).size.width*.03,
                  left:  MediaQuery.of(context).size.width*.05,
                ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(.1),
                  spreadRadius: 4,
                  blurRadius: 9,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cach In Clinic",style: TextStyle(fontSize: 12,),),
                    Radio(value: 'cach in Clinic', groupValue: paymentMethod, onChanged:radioButtonChanges,activeColor: Color(m.mainColor),)
                  ],
                ),
              ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
           Container(
                height: MediaQuery.of(context).size.height*.052,
                width: MediaQuery.of(context).size.width*.8,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(10)),
               color: Colors.white,
               boxShadow: [
                 BoxShadow(
                   color: Colors.black12.withOpacity(.1),
                   spreadRadius: 4,
                   blurRadius: 9,
                   offset: Offset(3, 3), // changes position of shadow
                 ),
               ],
             ),
                padding: EdgeInsets.only(
                  right:  MediaQuery.of(context).size.width*.03,
                  left:  MediaQuery.of(context).size.width*.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bank Transfer",style: TextStyle(fontSize:11,),),
                    Radio(value: 'Bank Transfer', groupValue: paymentMethod, onChanged: radioButtonChanges,activeColor: Color(m.mainColor))
                  ],
                ),
              ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            Container(
                height: MediaQuery.of(context).size.height*.052,
                width: MediaQuery.of(context).size.width*.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.1),
                    spreadRadius: 4,
                    blurRadius: 9,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
                padding: EdgeInsets.only(
                  right:  MediaQuery.of(context).size.width*.03,
                  left:  MediaQuery.of(context).size.width*.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("With pay pal",style: TextStyle(fontSize:11,),),
                    Radio(value: 'With pay pal', groupValue: paymentMethod, onChanged: radioButtonChanges,activeColor: Color(m.mainColor))
                  ],
                ),
              ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
           Container(
                height: MediaQuery.of(context).size.height*.052,
                width: MediaQuery.of(context).size.width*.8,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(10)),
               color: Colors.white,
               boxShadow: [
                 BoxShadow(
                   color: Colors.black12.withOpacity(.1),
                   spreadRadius: 4,
                   blurRadius: 9,
                   offset: Offset(3, 3), // changes position of shadow
                 ),
               ],
             ),
                padding: EdgeInsets.only(
                  right:  MediaQuery.of(context).size.width*.03,
                  left:  MediaQuery.of(context).size.width*.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Online Payment",style: TextStyle(fontSize:11,),),
                    Radio(value: 'Online Payment', groupValue: paymentMethod, onChanged: radioButtonChanges,activeColor: Color(m.mainColor))
                  ],
                ),
              ),

            SizedBox(height: MediaQuery.of(context).size.height*.05,),
            Container(
              width: MediaQuery.of(context).size.width*.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Image.asset(
                'images/payment/mada.png',
                fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width*.17,
                  height: MediaQuery.of(context).size.height*.055,),
                  Image.asset(
                    'images/payment/stc.png',
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width*.17,
                    height: MediaQuery.of(context).size.height*.055,),
                  Image.asset(
                    'images/payment/mastar.png',
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width*.17,
                    height: MediaQuery.of(context).size.height*.055,),
                  Image.asset(
                    'images/payment/visa.png',
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width*.17,
                    height: MediaQuery.of(context).size.height*.055,),

                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.08,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height*.045,
                width: MediaQuery.of(context).size.width*.45,
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*.22,
                  right: MediaQuery.of(context).size.width*.22,
                ),
                alignment: Alignment.center,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
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

                child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: ("Poppins-Medium")),),


              ),
              onTap:(){Navigator.pushNamed(context, '/confirmBook');},
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