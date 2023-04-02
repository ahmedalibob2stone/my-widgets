

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mydrew extends StatefulWidget {
  const mydrew({Key? key}) : super(key: key);

  @override
  State<mydrew> createState() => _mydrewState();
}

class _mydrewState extends State<mydrew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: InkWell(
            onTap: (){
            },
            child: ListView(

                children: [
                  UserAccountsDrawerHeader(accountName:Text("Ahmed ali",style: TextStyle(fontSize: 20,color: Colors.black),) , accountEmail: Text("ahmed205001@gmail.com",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/d_10.png'),
                        radius: 35 ,
                        backgroundColor: Color(0xFF00BF6D),
                        child: Icon(Icons.person,color: Colors.white,),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                    ),

                  ),


                  Column(
                    children: [

                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){},
                              child: ListTile(
                                title: Text("Home Page",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.home) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){
                            //    Navigator.push(context, MaterialPageRoute(builder: (context)=>new catogery()));
                              },
                              child: ListTile(
                                title: Text("List food",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.restaurant) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){},
                              child: ListTile(
                                title: Text("prfile",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.person) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),
                      ExpansionTile(
                        title:  Text("My account",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                        children: [
                          // title:

                          Container(
                            padding: EdgeInsets.only(right: 10,left: 10),
                            child: Column(
                              children: [

                                InkWell(
                                  onTap: (){
                                  //  Navigator.push(context,MaterialPageRoute(builder: (context)=>myprofile()));

                                  },
                                  child: ListTile(
                                    title: Text("Change settings",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                    leading:Icon(Icons.settings) ,

                                    iconColor:Color(0xFF00BF6D),
                                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                                  ),
                                ),


                                Divider(color: Colors.grey[400],),
                              ],

                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 10,left: 10),
                            child: Column(
                              children: [

                                InkWell(
                                  onTap: (){


                               //     Navigator.push(context,MaterialPageRoute(builder: (context)=>Changepassword()));

                                  },
                                  child: ListTile(
                                    title: Text("Change Password",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                    leading:Icon(Icons.lock_open) ,

                                    iconColor:Color(0xFF00BF6D),
                                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                                  ),
                                ),


                                Divider(color: Colors.grey[400],),
                              ],

                            ),
                          ),



                        ],

                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){
                           ///     Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoppingcard()));
                              },
                              child: ListTile(
                                title: Text("My order",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.history) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){
                //                Navigator.push(context, MaterialPageRoute(builder:( context)=>Favorit()));

                              },
                              child: ListTile(
                                title: Text("My favorit",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.favorite) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){
                       //         Navigator.push(context, MaterialPageRoute(builder:( context)=>OrderTracking()));

                              },
                              child: ListTile(
                                title: Text("Order Tracking",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.drive_eta) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){},
                              child: ListTile(
                                title: Text("about us",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.message) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){},
                              child: ListTile(
                                title: Text("Center help us",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.phone) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: (){},
                              child: ListTile(
                                title: Text("payment",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                                leading:Icon(Icons.payment) ,

                                iconColor:Color(0xFF00BF6D),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,) ,




                              ),
                            ),


                            Divider(color: Colors.grey[400],),
                          ],

                        ),
                      ),




                    ],
                  ),







                ]
            ),
          ),
        ),
      ),
    );
  }
}
class Homecatagory extends StatefulWidget {
  const Homecatagory({Key? key}) : super(key: key);

  @override
  State<Homecatagory> createState() => _HomecatagoryState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



class _HomecatagoryState extends State<Homecatagory> {
  @override
  Widget build(BuildContext context) {

return Scaffold(

  key: _scaffoldKey,
  // key:keymydrew ,
  drawer: mydrew(

  ),
);
  }
  }