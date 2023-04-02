


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//انشاء كلاس المفضلات الاطعمه الغرض من هذا الكلاس ان نعرض ميزه
//GriDelegate
class favoritcatogery extends StatefulWidget {
  // const ({Key? key}) : super(key: key);

  @override
  State<favoritcatogery> createState() => _State();
}

class _State extends State<favoritcatogery> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Productfood extends StatelessWidget {

  String name;
  String des;
  String image;
  String id;

  Productfood({

    required this.image,

    required this.name,
    required this.des,
    required this.id
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: GestureDetector(
        onTap: (){
        //  Navigator.push(context, MaterialPageRoute(builder:( context)=>Prodect()));
        },
        child: Container(

          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 4),
              )],
              borderRadius: BorderRadius.circular(15)
          ),
          margin: EdgeInsets.all( 5),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.favorite_border,color:Colors.red,)
              ),
              Container(
                //  height:92.0,
                height:MediaQuery.of(context).size.width/2-70,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image:DecorationImage(

                    image:AssetImage((image)),
                    fit: BoxFit.cover,
                  ),


                ),

              ),
              Container(
                  child: Column(
                    children: [
                      Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    ],
                  )

              ),
              Container(
                  child: Column(
                    children: [
                      Text(des,style: TextStyle(fontWeight: FontWeight.normal),),
                    ],
                  )

              ),
              Row(
                children: [
                  Text(id),
                  Expanded(child: Text("")),
                  Text(id),
                  Icon(Icons.star,color:Colors.amber),


                ],
              ),

              Container(
                child: Divider(),
              )



            ],
          ),



        ),
      ),

    );
  }
}
List<Productfood>food=[
  Productfood(image: 'assets/images/dish1.png', des: 'the firest food', name: 'prodect',id: "1"),
  Productfood(image:'assets/images/dish2.png' , des: 'the second food', name: 'prodect',id: "2"),
  Productfood(image: 'assets/images/dish3.png', des: 'the thiresd food', name: 'prodect',id: "3"),
  Productfood(image:'assets/images/d_7.png' , des: 'the spitial food', name: 'prodect', id: "4"),
  Productfood(image: 'assets/images/d_2.png', des: 'the spitial food', name: 'prodect',id: "5"),
  Productfood(image: 'assets/images/d_8.png', des: 'the spitial food', name: 'prodect',id: "6"),
  Productfood(image: 'assets/images/d_9.png', des: 'the spitial food', name: 'prodect',id: "7" ),
  Productfood(image: 'assets/images/d_10.png', des: 'the spitial food', name: 'prodect',id: "8"),
  Productfood(image: 'assets/images/d_11.png', des: 'the spitial food', name: 'prodect',id: "9"),
  Productfood(image:'assets/images/d_4.png' , des: 'the spitial food', name: 'prodect', id: "10"),









];
