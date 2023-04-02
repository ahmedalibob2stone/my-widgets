



import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as Im;
import 'package:uuid/uuid.dart';
import 'package:path_provider/path_provider.dart';
class COMPERSIMAGE extends StatefulWidget {
  // هذه الودجت تساعدنا ل عمل مسار ل الفايل
  //قبل ان نقوم بنشاء ودجت تعمل علي رفع المحتويات الي
  //storage
  //نستخدم هذا الكود ل انشاء مسار في فايل
 // const  COMPERSIMAGE({Key? key}) : super(key: key);
  // const  COMPERSIMAGE({Key? key}) : super(key: key);
  final  Reference storageReference = FirebaseStorage.instance.ref();

  File? imagefile;
  String PostId=Uuid().v4();
  CompersImage()async{
    final temdir=await getTemporaryDirectory();
    final path =temdir.path;
    Im.Image? imagef= Im.decodeImage(imagefile!.readAsBytesSync());
    final CompresImage =File('$path/img_$PostId.jpg')..writeAsBytesSync(Im.encodeJpg(imagef!,quality:  85));
   // setState(() {
     // imagefile=CompresImage;
    //});
  }

  UploadImage(imagefile)async{
    UploadTask uploadtask =storageReference.child("post_$PostId.jpg").putFile(imagefile);
    TaskSnapshot storagesnap =await uploadtask.whenComplete(() => null);
    String DownloadUrl =await storagesnap.ref.getDownloadURL();
    return DownloadUrl;
  }

  //Add this uses-permission to untitled\android\app\src\main\AndroidManifest.xml
  // for determined the curentlocation
//  <uses-permission android:name="android.permission.WRITE_CONTACTS" />
  //<uses-permission android:name="android.permission.READ_CONTACTS" />
  //<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
  @override
  Widget build(BuildContext context) {

    return Scaffold(


    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
