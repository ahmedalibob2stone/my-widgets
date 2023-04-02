

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class pickerImage extends StatefulWidget {
//  const pickerImage({Key? key}) : super(key: key);
  final ImagePicker _picker = ImagePicker();
  File? imagefile;
  handelcamera()async {

  //  Navigator.pop(context);
    final file = await _picker.pickImage(source: ImageSource.camera,maxHeight: 675,maxWidth: 960);
    // if (file != null) {
    //  return await file.readAsBytes();
    //}
    if(file?.path !=null){
      setState(() {
        imagefile =File(file!.path);
      });
    }

    print('No Image Selected');
  }
  handelGalery()async{

  //  Navigator.pop(context);
    final file = await _picker.pickImage(source: ImageSource.gallery,maxHeight: 675,maxWidth: 960);
    if(file?.path !=null){
      setState(() {
        imagefile =File(file!.path);
      });
    }

    print('No Image Selected');
  }
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

  void setState(Null Function() param0) {}
}
