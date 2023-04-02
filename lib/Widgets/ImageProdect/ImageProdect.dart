

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



// انشاء كونتينر ل عمل قالب ل صوره طعام وتحتوي علي جميع المعلةمات التي تخص الطبق او الطعام
class imageprodect extends StatelessWidget {
  const imageprodect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageProduct(){

      return Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color:  Color.fromRGBO(182, 128, 73, 1.0),
            boxShadow: [BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, 0),
            )],
            borderRadius: BorderRadius.only(
              bottomLeft:Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            )
        ),
        child: Column(
          children: [

            Image.asset( 'assets/images/dish1.png'),
            Padding(padding: EdgeInsets.only(top: 5)),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 103.0,top: 20),
                  child: Container(

                    decoration: BoxDecoration(
                        color: Color(0xFF00BF6D),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        )],
                        borderRadius: BorderRadius.circular(15)
                    ),
                    //child: IconButton(
                      //icon:
                      //FaIcon
                        //(FontAwesomeIcons.minus,
                         /// color: Colors.white
                       //   ,size:(20.0)

                     // ), onPressed: () {
                   // },

                  //  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 20,right: 10),
                  child: Container(
                      alignment: Alignment.center,
                      child: Text("4ck",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Container(
                    alignment: Alignment.bottomLeft,

                    //alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                        color: Color(0xFF00BF6D),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        )],
                        borderRadius: BorderRadius.circular(15)
                    ),
                    //child: IconButton(

                      //icon:  FaIcon(FontAwesomeIcons.plus,color: Colors.white
                       //   ,size:(20.0)),
                     // onPressed: () {

                   //   },),
                  ),
                ),
              ],
            )

          ],
        ),
      );


    }
    return Scaffold(
      body: ListView(
children: [
  Container(



      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0),
          )],
          borderRadius: BorderRadius.circular(50)
      ),


      child: Column(
        children: [

          Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Sandwich",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),



                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("we have all kinde of sandwish ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,color: Colors.black),),
                    )



                  ],
                ),
              )
          ),
          Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Text("5"),
                        Icon(Icons.star,color:Colors.amber),
                        Icon(Icons.star,color:Colors.amber),
                        Icon(Icons.star,color:Colors.amber),
                        Icon(Icons.star,color:Colors.amber),
                        Icon(Icons.star,color:Colors.amber),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(

                      children: [

                        Icon(Icons.favorite,color: Colors.amber),
                        new Text("favorites ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)

                      ],
                    ),
                  )
                ],
              )



          ),
          Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("we have all kinde of sandwish  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,color: Colors.grey),),
                    )

                  ],
                ),
              )
          ),



          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Container(
              // margin: EdgeInsets.only(top: 630),
              padding: const EdgeInsets.only(left: 8.0),



              //   height: 80,
              // width: 90,
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
                      color: Colors.brown.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: GestureDetector(

                  onTap: () {

                    //Navigator.push(context, MaterialPageRoute(builder: (context){
                    // return onboarding();
                    //    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0,right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Text(
                                " \$1000",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30
                              ),
                              ),
                            ],

                          ),

                        ),


                        Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              //   margin: EdgeInsets.only(bottom: 0),
                              // alignment: Alignment.bottomLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),

                                    decoration: BoxDecoration(

                                      //color:  Color(0xFFFAFAFA),
                                      color: Colors.brown,
                                      boxShadow: [BoxShadow(
                                        //   color: Colors.grey,

                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      )],
                                      borderRadius: BorderRadius.circular(40),

                                    ),
                                    child: Padding(

                                      padding: const EdgeInsets.only(bottom: 10.0,left: 10,top: 10,right: 10),
                                      child: Text("Add to basket",style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ),

                                  Icon(Icons.shopping_basket),
                                  // color: Colors.white,
                                ],
                              )
                            //  child:

                          ),
                        ),






                      ],
                    ),
                  )

              ),
            ),
          ),

        ],
      )
  ),
],
      ),
    );
  }
}
