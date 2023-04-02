

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class myprofile extends StatefulWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                            child: Text("change settings ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color:Color(0xFF00BF6D) ),)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                            margin:EdgeInsets.only(bottom: 20),
                            child: Text("   ",style: TextStyle(fontSize: 25.0,color:Color(0xFF00BF6D) ),)
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.only(bottom: 10.0),
                        padding: EdgeInsets.only(left: 20.0,right: 20.0),
                        decoration:BoxDecoration(

                          borderRadius: BorderRadius.circular(25.0),
                          color:  Colors.white,
                        ),
                        child: TextFormField(

                          decoration: InputDecoration(


                            hintText: "Name ",border: InputBorder.none,
                            labelText: 'Enter the name',
                            errorText: _validate ? 'name Can\'t Be Empty' : null,
                            icon: Icon(Icons.person),

                          ),
                          // validator: (value) {
                          // if (value == null || value.isEmpty) {
                          // return "plase Enter yourname";
                          //}

                          //},

                        ),
                      ),
                      Container(
                        margin:EdgeInsets.only(bottom: 10.0),
                        padding: EdgeInsets.only(left: 20.0,right: 20.0),
                        decoration:BoxDecoration(

                          borderRadius: BorderRadius.circular(25.0),
                          color:  Colors.white,
                        ),
                        child: TextFormField(

                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              icon: Icon(Icons.mail),

                              hintText: " Email",border: InputBorder.none,
                              labelText: 'Enter  Email',
                              errorText: _validate ? 'Email Can\'t Be Empty' : null,


                            ),
                            // validator: (value) {
                            // if ( value?.indexOf("@")==-1 || value?.indexOf(".")==-1 ||value!.isEmpty) {
                            // return "plase Enter Email";
                            //}

                            //},
                            validator: (value){
                              if(value!.isEmpty||value.length <1)
                              {
                                return "Enter Email";
                              }
                            }
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.only(bottom: 10.0),
                        padding: EdgeInsets.only(left: 20.0,right: 20.0),
                        decoration:BoxDecoration(

                          borderRadius: BorderRadius.circular(25.0),
                          color:  Colors.white,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          // obscureText: true,
                          decoration: InputDecoration(


                            hintText: "Password ",
                            border: InputBorder.none,
                            labelText: 'Enter the password',
                            errorText: _validate ? 'password Can\'t Be Empty' : null,

                            suffixIcon: IconButton(
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
                      Container(
                        margin:EdgeInsets.only(bottom: 10.0),
                        padding: EdgeInsets.only(left: 20.0,right: 20.0),
                        decoration:BoxDecoration(

                          borderRadius: BorderRadius.circular(25.0),
                          color:  Colors.white,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(


                            hintText: "Phone ",border: InputBorder.none,
                            labelText: 'Enter the Phone',
                            errorText: _validate ? 'phone Can\'t Be Empty' : null,
                            icon: Icon(Icons.phone),

                          ),
                          validator: (value) {
                            if ( value!.isEmpty ||value.length <5 ) {
                              return "plase Enter Phone";
                            }

                          },
                        ),
                      ),

                      MaterialButton(onPressed: (){},
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




                                child: InkWell(
                                  onTap: (){},
                                  child: Text(
                                    'Save',
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
