

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.all( 5.0),
        child: Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(141, 83, 30, 1.0),
                  Color.fromRGBO(239, 201, 172, 0.9372549019607843),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(25.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.withOpacity(0.2),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {

             //   Navigator.push(context, MaterialPageRoute(builder: (context){
            //      return onboarding();
            //    }));
              },
              child: Text(
                'Get started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Netflix",
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  letterSpacing: 0.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
