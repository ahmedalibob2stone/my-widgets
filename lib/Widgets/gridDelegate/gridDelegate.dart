

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'favorit.dart';

//انشاء قائمه المفضلات وانشاء فيهاء
//والتي تمكنناء من انشاء كرد يحتوي علي صوره واسم المنتج الذي سوف نضيفه والسعر والعناوين التي نريدخهاء ويكون كل المحتويات بداخلهاء :gridDelegate:
//من اهم مميزاتهاء نصتطيع ان تعرض لي اربعه او سته كردات علي شكل اوفقي ويصبح كل كرد صغيرا جدا ونستطيع ان نعرض اثنين كردات في شكل افقي :gridDelegate

class Favorit extends StatefulWidget {
  const Favorit({Key? key}) : super(key: key);

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        centerTitle:true,
        title:Text("My Favorit ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.green, onPressed: () {
          Navigator.pop(context);
        },
        ),
      ),
      body:Container(

        child:GridView.builder(


            itemCount: food.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.8) ,
            itemBuilder:(BuildContext context,int index){
              final Productfood proo=food[index];
              return Productfood(image: proo.image, des:proo.des, name: proo.name, id: proo.id, );
            }




        ),
      ),


    );
  }
}
