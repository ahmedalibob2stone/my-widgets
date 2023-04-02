


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
class CurentUser extends StatefulWidget {
 // const CurentUser({Key? key}) : super(key: key);

  TextEditingController textGeolocator =TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
   body:Column(
  children: [
    Container(

      width: 100,

      padding: EdgeInsets.all(60),

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(50.0),



      ),

      child:ElevatedButton.icon(onPressed: (){

      },  icon:Icon(Icons.location_city,color: Colors.white),label: Text("curent Open Googel Map",style: TextStyle(color: Colors.white),),



      ) ,



    ),
  ],
)
    );
  }
  GetUserLocatggion()async{

    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    List<Placemark>Placemarks=await placemarkFromCoordinates(position.latitude,position.longitude);
    Placemark Placemarkk=Placemarks[0];
    print("Placemarkk is $Placemarkk");
    String fuladress= "${Placemarkk.locality}"+" ,"+"${Placemarkk.country}";
    print("FullAdress is $fuladress");
    textGeolocator.text =fuladress;
  }

  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    throw UnimplementedError();
  }

  void setState(Null Function() param0) {}
}
