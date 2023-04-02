import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//انشاء كونتينر يحتوي علي صور فرديه علي شكل كرد صغيره
class singlecategory extends StatelessWidget {
  String cat_name;
  String cat_id;
  String cat_image;
  singlecategory({
    required this.cat_id,
    required this.cat_image,
    required this.cat_name,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:   Colors.black,
                ),
                child: Image.asset(cat_image),

              ), Text(cat_name,style: TextStyle(fontWeight: FontWeight.bold ),),
            ],
          )



      ),
    );
  }
}
List<singlecategory>move=[
  singlecategory(cat_id: "5", cat_image: "assets/images/cat_8.png", cat_name: "cat_1"),
  singlecategory(cat_id: "6", cat_image: "assets/images/cat_2.png", cat_name: "cat_2"),

  singlecategory(cat_id: "3", cat_image: "assets/images/cat_3.png", cat_name: "cat_3"),

  singlecategory(cat_id: "4", cat_image: "assets/images/cat_4.png", cat_name: "cat_4"),

  singlecategory(cat_id: "1", cat_image: "assets/images/cat_5.png", cat_name: "cat_5"),
  singlecategory(cat_id: "2", cat_image: "assets/images/cat_6.png", cat_name: "cat _6"),

  singlecategory(cat_id: "7", cat_image: "assets/images/cat_7.png", cat_name: "cat_7"),

  singlecategory(cat_id: "8", cat_image: "assets/images/cat_1.png", cat_name: "cat_8"),

  singlecategory(cat_id: "9", cat_image: "assets/images/cat_9.png", cat_name: "cat_9"),



  singlecategory(cat_id: "10", cat_image: "assets/images/cat_10.png", cat_name: "cat_10"),

  singlecategory(cat_id: "11", cat_image: "assets/images/cat_11.png", cat_name: "cat_11"),
  singlecategory(cat_id: "12", cat_image: "assets/images/cat_12.png", cat_name: "cat_12"),


];

class hh extends StatelessWidget {
  const hh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: MediaQuery.of(context).size.width*3,
            height: 150,
            child: ListView.builder(
                itemCount: move.length,
                scrollDirection:Axis.horizontal,

                itemBuilder: (BuildContext context,int index) {
                  final singlecategory catt= move[index];
                  return singlecategory(cat_id: catt.cat_id, cat_image: catt.cat_image, cat_name: catt.cat_name);

                }

            )

        ),
      ),
    );
  }
}
