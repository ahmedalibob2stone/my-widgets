import 'dart:io';

import 'package:flutter/material.dart';


//import 'package:toast/toast.dart';






//checkcoonection with network in funtion determined the user wanted

Future<bool> checkConnection() async{
  try{
    final result =await InternetAddress.lookup("google.com")     ;

    if(result.isNotEmpty && result[0].rawAddress.isNotEmpty){
      print("connect");
      return true;
    }else{
      print("not connect");
      return false;
    }

  }  on SocketException catch(_){
    print("not connect");
    return false;
  }
}


class Login extends StatefulWidget {
  //const Login(context,, {Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void login(context)async
  {
    //نقوم بااضافه هذه ال
    //if
    // في الفنكشن او الودجت التي نريد منهاء ان تقوم بفحص للانترنت عند الادخال
    if(!await checkConnection() ){
   //   Toast.show("not connection internat",duration: Toast.lengthShort, gravity: Toast.bottom);

    }
    {
//      Toast.show("please fitt data",duration: Toast.lengthShort, gravity: Toast.bottom);

    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
//ToastContext();
