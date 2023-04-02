
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopOffers extends StatelessWidget {
  const TopOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(

                height: 80,

                width: 80,

                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),

                    image:DecorationImage(

                      image: NetworkImage("https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),

                      fit: BoxFit.cover,

                    )

                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 1),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        Text(
                          " Hamburger",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,
                        ),
                        ),
                        Text(
                          " italyan cercpt for you",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,
                        ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
              Text(
                " \$30",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,
              ),
              ),


            ],

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
        ],

      ),
    );
  }
}