

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boorom extends StatelessWidget {
  const Boorom({Key? key}) : super(key: key);
//BottomNavigationBar show us throught this widget buttons down of screan when pess on it move us to other screan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Color(0xFF00BF6D),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        showSelectedLabels: true,
        type:BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:
          Icon(Icons.notifications),
            label: "Notification",

          ),
          BottomNavigationBarItem(icon:
          Icon(Icons.restaurant_menu),
            label: "Top offers",

          ),
          BottomNavigationBarItem(icon:
          Icon(Icons.person),
            label: "account",

          ),
          BottomNavigationBarItem(icon:
          Icon(Icons.chat),
            label: "account",

          ),
        ],


      ),
    );
  }
}
