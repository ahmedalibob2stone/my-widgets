

import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';


import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';

class uploadimageforstorage extends StatefulWidget {
  const uploadimageforstorage({Key? key}) : super(key: key);

  @override
  State<uploadimageforstorage> createState() => _uploadimageforstorageState();
}
//this widget help us to upload image to storage
// const  COMPERSIMAGE({Key? key}) : super(key: key);
final  Reference storageReference = FirebaseStorage.instance.ref();
String PostId=Uuid().v4();
class _uploadimageforstorageState extends State<uploadimageforstorage> {
  UploadImage(imagefile)async{
    UploadTask uploadtask =storageReference.child("post_$PostId.jpg").putFile(imagefile);
    TaskSnapshot storagesnap =await uploadtask.whenComplete(() => null);
    String DownloadUrl =await storagesnap.ref.getDownloadURL();
    return DownloadUrl;
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
