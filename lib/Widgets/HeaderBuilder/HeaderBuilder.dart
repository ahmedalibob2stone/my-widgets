

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderBilder extends StatelessWidget {
  const HeaderBilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget HeaderBuild(){
      return Container(
          color:   Colors.white,

          child:  Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 4),
                      )],
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: IconButton(icon:Icon(Icons.arrow_back_ios,color: Color(0xFF00BF6D),), onPressed: () {
                    Navigator.of(context).pop();

                  },),
                ),


              ],

            ),


          )
      );

    }
   return Scaffold(

   );
  }
}
