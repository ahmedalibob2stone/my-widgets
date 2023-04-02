

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SplashScrean extends StatefulWidget {
  const SplashScrean({Key? key}) : super(key: key);

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  @override
  //void initState(){
    //super.initState();
    //Timer(Duration(seconds:4), ()=>

        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
          //  Getstart())));
  //}
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF00BF6D),

              Color(0xFF00BF6D),
            ],

          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset("assets/images/hamburger.png",height: 150.0,width: 150.0,),
            ),

            Text("welcom",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFFF5FCF9)),),


            Text("enjoy by using this application",style: TextStyle(fontSize: 15,color: Color(0xFFF5FCF9))),
            CircularProgressIndicator(),
          ],

        )
    );
  }
}
