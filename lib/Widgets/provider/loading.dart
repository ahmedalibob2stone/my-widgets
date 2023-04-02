import 'package:flutter/cupertino.dart';
//import 'package:provider/provider.dart';

class LoadingControl with ChangeNotifier{

  void add_loading(){
    notifyListeners();
  }
}
//بعد اضافه كود ال
// provider
//نقوم بااستدعائه عن طريق
///load.add_loading();
// ل عمل
//rebuild
// وعملهاء نفس عمل
// setState