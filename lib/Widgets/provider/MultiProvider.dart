
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

import '../toast/toast.dart';

// Multiprovider
// نقوم بااستعمالهاء في كلاس
//main
// نقوم با اضافه جميع
//providers


void main() async {



}
class Screan extends StatefulWidget {
  //const Splash ({Key? key}) : super(key: key);

  @override
  _ScreanState createState() => _ScreanState();
}


class _ScreanState extends State<Screan> {

  Future getpost()async{

    var ur="http://172.20.58.51:82/flutterrestaurtant/api/";
    var response =await http.get(Uri.parse(ur));
    var responsebody= response.body;
    print(responsebody);
  }
  void initState()
  {
    getpost();

  }
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Container(

    );
  //  return MultiProvider
    //  (


    //  providers: [
     //   ChangeNotifierProvider<LoadingControl>(
       //   create:  (context) =>LoadingControl(),

       // )

   //   ],
    //  child:
   //   MaterialApp(
     //   home:Home(),

   //   ),

   // );
  }
}

