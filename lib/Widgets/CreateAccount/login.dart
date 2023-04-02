

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                          child: Text("Login  to your account ",style: TextStyle(fontSize: 25.0,color:Color(0xFF00BF6D) ),)
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
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                // obscureText: true,
                                decoration: InputDecoration(


                                  hintText: "Password ",
                                  border: InputBorder.none,
                                  labelText: 'Enter the password',
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
                            GestureDetector(
                              onTap: (){
                           //     Navigator.push(context,MaterialPageRoute(builder: (context)=>Forget()) );
                              },
                              child: Text("Forget password",style: TextStyle(color: Color(0xFF00BF6D) ),),
                            )
                          ],
                        )

                      ),


                      MaterialButton(onPressed: (){
                 //       Navigator.push(context,MaterialPageRoute(builder: (context)=>Homecatagory()) );
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
                                  'Log in',
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
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.bottomCenter,
                        padding:EdgeInsets.only(top: 20),
                        child: Text(
                          "By clicking sign up you agree to the our Terms and Conditions",style: TextStyle(fontSize:13,color: Colors.black),
                        ),
                      )



                    ],
                  ),


                  )

              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account? ",style: TextStyle(fontSize:15,color: Colors.grey)),

                  ],




                ),


              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(

                    child: GestureDetector(
                      onTap: (){
                      //  Navigator.push(context,MaterialPageRoute(builder: (context)=>Register()) );
                      },
                      child: Text("Sign up",style: TextStyle(fontSize:15,color: Color(0xFF00BF6D)),),
                    )
                ),
              )



            ],
          )
      ),
    );
  }
}
