


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDilog extends StatelessWidget {
  //const ShowDilog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    chooseimage(){
      return showDialog(
          builder: (context){
            return SimpleDialog(
              children: [
                SimpleDialogOption(
                  child: Text("photo with camera"),
                  onPressed: (){
                 //   handelcamera();
                  },
                ),
                SimpleDialogOption(
                  child: Text("photo  from  Gallery "),
                  onPressed: (){
              //      handelGalery();
                  },
                ),
                SimpleDialogOption(
                  child: Text("Cancel"),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )
              ],
            );
          },
          context: context);



    }
    return Scaffold(

    );
  }
}
