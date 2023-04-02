
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom_Text_filed extends StatelessWidget {
  final String text;
  final String hint ;
  final Function onsave ;
  final Function validator;
  Custom_Text_filed({
    required this.text,required this.hint,required this.onsave,required this.validator, required TextEditingController controller, required bool obscureText,
  }
      );
  @override
  Widget build(BuildContext context) {
    return  Container(

        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: Text(text,style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),)
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: hint,
                helperStyle: TextStyle  (color: Colors.grey),fillColor:   Colors.white,
              ),

            )
          ],
        )
    );
  }
}
