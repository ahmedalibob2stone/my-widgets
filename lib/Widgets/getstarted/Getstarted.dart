
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Button/Button.dart';


// هذا الكلاس يعرض لنا واجهه مثل
//onboarding
//وعندما نضغط علي زر
// get start
//يقوم بنقلناء الي واجهه التطبيق
class Getstart extends StatefulWidget {
//  const Getstart ({Key? key}) : super(key: key);

  @override
  _GetstartState createState() =>   _GetstartState();
}

class   _GetstartState extends State<Getstart> {
  @override

  Widget build(BuildContext context) {
    double hight=(MediaQuery.of(context).size.height/5);

    return Scaffold(
      body: new Container(
        // width: 200,

        child: Column(
          children:<Widget> [
            Expanded(
              child: Container(
                height: hight*4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image:DecorationImage(
                      image: AssetImage("assets/images/slider_image_3.png"),
                      fit: BoxFit.cover,
                    )

                ),
              ),
            ),
            new Container(
              height: hight,
              decoration: BoxDecoration(
                color:  Color(0xFFD3D17E),
                boxShadow:[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0,3)),
                ],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),
              ),
              child: ListView(
                children:<Widget> [
                  Column(
                    children:<Widget> [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

                          SizedBox(height: 10,),

                          Text("can you choose any food do you want",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                        ],
                      ),
                      SizedBox(height: 5,),

                      Container(
                    child: Button(),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
