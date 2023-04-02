

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BuildSplashScrean extends StatelessWidget {
  const BuildSplashScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildSplashScrean(){
      return Container(
        color:  Color(0xFFF03738),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/upload.svg",height: 260.0,),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                //  color: Colors.green,
                  decoration: BoxDecoration(

                    color: Color(0xFFFC9B02),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(onPressed: (){
                  //  chooseimage();
                  },


                      child: Text(""
                          "Upload image",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))

              ),
            )

          ],
        ),
      );
    }
    return Scaffold(

    );
  }
}
