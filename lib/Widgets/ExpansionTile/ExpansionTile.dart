

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expansion extends StatelessWidget {
  const Expansion({Key? key}) : super(key: key);
  //ExpansionTile
  //عن الضغط علي
  //ListTile
  // 3 Tiles OR Tiles يعرض لنا 2
  //drawer في ال
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        title:  Text("My account",style: TextStyle(color: Colors.black,fontSize: 18.0),),
        children: [
          // title:

          Container(
            padding: EdgeInsets.only(right: 10,left: 10),
            child: Column(
              children: [

                InkWell(
                  onTap: (){
                    //                Navigator.push(context,MaterialPageRoute(builder: (context)=>myprofile()));

                  },
                  child: ListTile(
                    title: Text("Change settings",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                    leading:Icon(Icons.settings) ,

                    iconColor:Color(0xFF00BF6D),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                  ),
                ),


                Divider(color: Colors.grey[400],),
              ],

            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10,left: 10),
            child: Column(
              children: [

                InkWell(
                  onTap: (){


                    //         Navigator.push(context,MaterialPageRoute(builder: (context)=>Changepassword()));

                  },
                  child: ListTile(
                    title: Text("Change Password",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                    leading:Icon(Icons.lock_open) ,

                    iconColor:Color(0xFF00BF6D),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                  ),
                ),


                Divider(color: Colors.grey[400],),
              ],

            ),
          ),



        ],

      ),
    );
  }
}
