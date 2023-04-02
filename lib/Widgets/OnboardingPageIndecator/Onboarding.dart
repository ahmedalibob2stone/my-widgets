import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Onboarding extends StatelessWidget {
  //const viewpage({Key? key}) : super(key: key);
  String imageUrl;
  String titel;
  String info;


  Onboarding({required this.imageUrl,required this.titel,required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Container(
          alignment: Alignment.center,
          child: Image.asset(imageUrl,fit: BoxFit.cover,),

        ),



        new Padding(padding: EdgeInsets.only(bottom:  20)),

        Text(titel,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:   Color(0xFFF03738),),),
        new Padding(padding: EdgeInsets.all(10)),
        Text(titel,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),


      ],

    );
  }
}
List<Onboarding>nn=[
  Onboarding(imageUrl:"assets/images/dish3.png",titel: "can you choose the best food any time", info:"are you ready",),
  Onboarding(imageUrl:"assets/images/dish2.png",titel: "can you choose the best food any time", info:"are you ready"),
  Onboarding(imageUrl:"assets/images/dish4.png", titel:"can you choose the best food any time", info:"are you ready"),

];
