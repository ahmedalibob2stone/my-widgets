
import 'package:flutter/cupertino.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({Key? key}) : super(key: key);
  //Bottomsheet  it is screan appears when we press on button or any action and appears for us screan in heart of screan or appears screan front of screan
  @override
  Widget build(BuildContext context) {


      return Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 50,

        ),
        child: Column(
          children: [
            Text("Chosse image",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 20,),
            Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                   // IconButton(onPressed: (){}
                     // tackphoto(ImageSource.camera);
                   // , //icon: Icon(Icons.camera) ),
                    Text("Camera"),
                  ],

                ),
                Row(
                  children: [
                 //   IconButton(onPressed: (){ },
                    //  tackphoto(ImageSource.gallery);
                //    icon: Icon(Icons.image) ),
                    Text("Galary"),
                  ],

                )

              ],
            )
          ],
        ),
      );

  }

}
