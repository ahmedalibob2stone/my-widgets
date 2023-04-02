

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
class TimeLine extends StatelessWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getTimeline(){
      return Container(
        margin: EdgeInsets.only(top: 20,bottom: 150),
        color: Colors.transparent,
        child: Column(
          children: [
            Container(

                height: 50.0,
                child: TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.2,
                  indicatorStyle:IndicatorStyle(height: 2) ,
                  endChild: Container(
                    padding: EdgeInsets.all(
                        10
                    ),


                    child: Row(
                      children: [
                        Text("Conform Recquest",style: TextStyle(color: Colors.black,fontSize: 15),),
                        Icon(Icons.restaurant,color:Color(0xFF00BF6D),),


                      ],
                    ),
                  ),


                )
            ),
            Container(

                height: 50.0,
                child: TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.2,
                  indicatorStyle:IndicatorStyle(height: 1) ,
                  endChild: Container(
                    padding: EdgeInsets.all(
                        10
                    ),
                    child: Row(
                      children: [
                        Text("Prepering your order",style: TextStyle(color: Colors.black,fontSize: 15),),
                        Icon(Icons.restaurant,color:Color(0xFF00BF6D),),

                      ],
                    ),
                  ),


                )
            ),
            Container(

                height: 50.0,
                child: TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.2,
                  indicatorStyle:IndicatorStyle(height: 1) ,
                  endChild: Container(
                    padding: EdgeInsets.all(
                        10
                    ),
                    child: Row(
                      children: [
                        Text("Order is ready at the resturant",style: TextStyle(color: Colors.black,fontSize: 15),),
                        Icon(Icons.restaurant,color:Color(0xFF00BF6D),),

                      ],
                    ),
                  ),


                )
            ),
            Container(

                height: 50.0,
                child: TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.2,
                  indicatorStyle:IndicatorStyle(height: 1) ,
                  endChild: Container(
                    padding: EdgeInsets.all(
                        10
                    ),
                    child: Row(
                      children: [
                        Text("Recive is pickup your order yorr order",style: TextStyle(color: Colors.green,fontSize: 15),),
                        Icon(Icons.restaurant,color:Color(0xFF00BF6D),),

                      ],
                    ),
                  ),


                )
            ),
            Container(

                height: 50.0,
                child: TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.2,
                  indicatorStyle:IndicatorStyle(height: 1) ,
                  endChild: Container(
                    padding: EdgeInsets.all(
                        10
                    ),
                    child: Row(
                      children: [
                        Text("Recive is really your place",style: TextStyle(color: Colors.black,fontSize: 15),),
                        Icon(Icons.restaurant,color:Color(0xFF00BF6D),),

                      ],
                    ),
                  ),


                )
            ),


          ],
        ),
      );
    }
    return Scaffold(

    );
  }
}
