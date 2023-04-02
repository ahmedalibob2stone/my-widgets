

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Changepassword extends StatefulWidget {
  const Changepassword({Key? key}) : super(key: key);

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  bool _validate = false;
  //Null isEmpty  =null;
  bool obscureText = true;
  bool isPasswordVisible=false;


  @override

  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Color(0xFF00BF6D),
            ), onPressed: () =>Navigator.of(context).pop()


        ),
      ),
      body: Container(
          margin:EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  child:Form(child: ListView(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: Text("Change your password ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color:Color(0xFF00BF6D) ),)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          margin:EdgeInsets.only(bottom: 20),
                        ),
                      ),


                      Container(
                          margin:EdgeInsets.only(bottom: 10.0),
                          padding: EdgeInsets.only(left: 20.0,right: 20.0),
                          decoration:BoxDecoration(

                            borderRadius: BorderRadius.circular(25.0),
                            color:  Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  // obscureText: true,
                                  decoration: InputDecoration(


                                    hintText: "Password ",
                                    border: InputBorder.none,
                                    labelText: 'Curent password',
                                    errorText: _validate ? 'password Can\'t Be Empty' : null,
                                    prefixIcon: IconButton(
                                        icon: isPasswordVisible
                                            ?Icon(Icons.visibility_off):Icon(Icons.visibility),
                                        onPressed: ()=>
                                            setState(()=> isPasswordVisible=!isPasswordVisible)



                                    ),
                                    //  border:OutlineInputBorder(),


                                  ),
                                  obscureText:isPasswordVisible,
                                  validator: (value){
                                    if(value!.isEmpty|| value.length <6){
                                      return "plase Enter password";
                                    }
                                  },
                                ),
                              ),

                            ],
                          )

                      ),
                      Container(
                          margin:EdgeInsets.only(bottom: 10.0),
                          padding: EdgeInsets.only(left: 20.0,right: 20.0),
                          decoration:BoxDecoration(

                            borderRadius: BorderRadius.circular(25.0),
                            color:  Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  // obscureText: true,
                                  decoration: InputDecoration(


                                    hintText: " Conform Password ",
                                    border: InputBorder.none,
                                    labelText: 'New  password',
                                    errorText: _validate ? 'password Can\'t Be Empty' : null,
                                    prefixIcon: IconButton(
                                        icon: isPasswordVisible
                                            ?Icon(Icons.visibility_off):Icon(Icons.visibility),
                                        onPressed: ()=>
                                            setState(()=> isPasswordVisible=!isPasswordVisible)



                                    ),
                                    //  border:OutlineInputBorder(),


                                  ),
                                  obscureText:isPasswordVisible,
                                  validator: (value){
                                    if(value!.isEmpty|| value.length <6){
                                      return "plase Enter password";
                                    }
                                  },
                                ),
                              ),

                            ],
                          )

                      ),
                      Container(
                          margin:EdgeInsets.only(bottom: 10.0),
                          padding: EdgeInsets.only(left: 20.0,right: 20.0),
                          decoration:BoxDecoration(

                            borderRadius: BorderRadius.circular(25.0),
                            color:  Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  // obscureText: true,
                                  decoration: InputDecoration(


                                    hintText: " Conform Password ",
                                    border: InputBorder.none,
                                    labelText: 'Conform  password',
                                    errorText: _validate ? 'password Can\'t Be Empty' : null,
                                    prefixIcon: IconButton(
                                        icon: isPasswordVisible
                                            ?Icon(Icons.visibility_off):Icon(Icons.visibility),
                                        onPressed: ()=>
                                            setState(()=> isPasswordVisible=!isPasswordVisible)



                                    ),
                                    //  border:OutlineInputBorder(),


                                  ),
                                  obscureText:isPasswordVisible,
                                  validator: (value){
                                    if(value!.isEmpty|| value.length <6){
                                      return "plase Enter password";
                                    }
                                  },
                                ),
                              ),

                            ],
                          )

                      ),


                      MaterialButton(onPressed: (){
                     //   Navigator.push(context,MaterialPageRoute(builder: (context)=>Homecatagory()) );
                      },
                        child: Container(

                          child: Padding(

                            padding: const EdgeInsets.only(top: 100),
                            child: Container(

                              height: 40,
                              width: 250,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF00BF6D),
                                      Color(0xFF00BF6D)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 4,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    )
                                  ]
                              ),
                              child: Center(




                                child: Text(
                                  'Save change',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Netflix",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    letterSpacing: 0.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),


                      ),




                    ],
                  ),


                  )

              ),





            ],
          )
      ),
    );
  }
}
