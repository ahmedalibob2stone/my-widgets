

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//import '../product/product_details.dart';

class singlproecategory extends StatelessWidget {
  String pro_name;
  String pro_id;
  String pro_image;
  String pro_des;
  String pro_offers;
  singlproecategory({
    required this.pro_id,
    required this.pro_image,
    required this.pro_name,
    required this.pro_des,
    required this.pro_offers
  });
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
     //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Prodect()));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(


            height: 100,
            width: 100,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(pro_image),
                        fit: BoxFit.cover,
                      )
                      ,borderRadius: BorderRadius.circular(50)
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(


                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(pro_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                        RichText(text:  TextSpan(
                            text: pro_des,style: TextStyle(color: Colors.grey,fontSize: 16.0))),
                        Row(

                          children: [
                            Text("4.2"),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.indigo,size: 15,),
                                Icon(Icons.star,color: Colors.indigo,size: 15,),
                                Icon(Icons.star,color: Colors.indigo,size: 15,),
                                Icon(Icons.star,color: Colors.indigo,size: 15,),
                              ],
                            ),
                            Text("(12+)"),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.only(top: 5,left: 120.0),
                    child: Container(

                      height: 100,

                      width: 30,

                      child: new Column(



                        children: [



                          Icon(Icons.favorite_border, color: Colors.red,),


                          checkoffers( pro_offers),




                        ],

                      ),

                    )
                )
              ],
            )
        ),
      ),
    );

  }
  Widget checkoffers(String pro_offers)
  {
    return pro_offers==" 1 "?
    Container(
      padding: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
          color: Colors.red,

          borderRadius: BorderRadius.circular(10)
      ),


      child:new

      Text("offers",style: TextStyle(color: Colors.white),),




    )
        :Text("");
  }
}
List<singlproecategory> nno=[

  singlproecategory(pro_image:  'assets/images/dish1.png', pro_id: 'the firest food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "2",),
  singlproecategory(pro_image: 'assets/images/dish2.png' , pro_id: 'the second food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "3",),
  singlproecategory(pro_image:  'assets/images/dish3.png', pro_id: 'the thiresd food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "4",),
  singlproecategory(pro_image:'assets/images/d_7.png' , pro_id: 'the spitial food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "5", ),
  singlproecategory(pro_image: 'assets/images/d_2.png', pro_id: 'the spitial food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "6",),
  singlproecategory(pro_image: 'assets/images/d_8.png', pro_id: 'the spitial food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "7",),
  singlproecategory(pro_image: 'assets/images/d_9.png', pro_id: 'the spitial food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "8", ),
  singlproecategory(pro_image: 'assets/images/d_10.png', pro_id: 'the spitial food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "9",),
  singlproecategory(pro_image: 'assets/images/d_11.png', pro_id: 'the spitial food', pro_name: 'prodect',pro_des: "descproduct",pro_offers: "10",),
  singlproecategory(pro_image:'assets/images/d_4.png' , pro_id: 'the spitial food', pro_name: 'prodect', pro_des: "descproduct",pro_offers: "11",),


];