
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bootom extends StatefulWidget {
//const Homeview({Key? key}) : super(key: key);



  @override
  State<bootom> createState() => _bootomState();

}
//BottomNavigationBar show us throught this widget buttons down of screan when pess on it move us to other screan

class _bootomState extends State<bootom> {
 // const bootoom({Key? key}) : super(key: key);
 late int  PageIndex;
 late PageController pagecontroller=new PageController() ;
 @override
 void disposed(){
   pagecontroller.dispose();
 }
 onpagechange(int PageIndex){

   setState(() {
     this.PageIndex=PageIndex;
   });
 onTap
     (int PageIndex){

   pagecontroller.animateToPage(PageIndex,duration: Duration(microseconds: 200),curve: Curves.bounceInOut);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:CupertinoTabBar(
            activeColor: Colors.amber,
            currentIndex: PageIndex,
            onTap: onTap,
            items: [
              BottomNavigationBarItem(
                  icon:Icon(Icons.whatshot)),
              BottomNavigationBarItem(
                  icon:Icon(Icons.notifications)),
              BottomNavigationBarItem(
                  icon:Icon(Icons.camera_alt)),
              BottomNavigationBarItem(
                  icon:Icon(Icons.search)),
              BottomNavigationBarItem(
                  icon:Icon(Icons.person)),
            ]

        )
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
