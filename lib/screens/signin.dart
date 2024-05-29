

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vspay/screens/forgotmail.dart';
import 'package:vspay/screens/forgotpass.dart';
import 'package:vspay/screens/signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.width * 0.1, 0, 0),
            child: Container(   
              width: MediaQuery.of(context).size.width*0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("lib/assets/Logo.png"),
                  fit: BoxFit.contain,height: MediaQuery.of(context).size.height*0.06,),
                  Padding(
                    padding:EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.1, 0, 0, 0),
                    child: Image(
                        image: AssetImage("lib/assets/Star 8.png"),
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                  ),
              
                  // Image.asset("E:/vscode/vspay/lib/assets/Logo.png")
                ],
              ),
            ),
          ),
          //------------------
          Padding(
            padding:  EdgeInsets.fromLTRB(
                  10,  MediaQuery.of(context).size.width * 0.2,0, 0),
            child: Row(
              children: [
                Text("Hi, Welcome !  ",style: TextStyle(
                  fontSize: 36,
                  color: Color.fromARGB(255, 18, 14, 99),
                  fontWeight: FontWeight.bold
                ),),
                Image(image: AssetImage("lib/assets/image 296.png"),height: MediaQuery.of(context).size.height*0.04,)
              ],
            ),
          ),
          //-------------------
          Padding(
             padding: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.width * 0.1, 0, 0),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width*0.8, 0),
                  child: Text("User ID",style: TextStyle(
                    fontSize: 16
                      
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "User ID",
                      enabledBorder: OutlineInputBorder( borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
                      border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.3)))
                    ),
                  ),
                ),
              ],
            ),
          ),
          //--------------------
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, MediaQuery.of(context).size.width * 0.8, 0),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.3))),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.3)))),
                  ),
                ),
            ],
          ),
            //----------------
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (bool ){})
                      ,
                      Text("Remember me"),
                    ],
                  ),
                  TextButton(onPressed: (){ Get.to(ForgotPassword());}, child: Text("Forgot Password ?",style: TextStyle(color: Colors.black),),)
                ],
              ),
            ),
            //-------------------
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  
                  print('Button Pressed');
                },
                
                child: Text('Log In',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Color.fromARGB(255, 18, 14, 99),
                  minimumSize: Size(
                      double.infinity, 50),
                ),
              ),
            ),
            TextButton(onPressed: (){
              Get.to(ForgotMail());
            }, child: Text("Forgot User ID ?")),

             TextButton(
                onPressed: () {
                  Get.to(SignUp());
                },
                child: Text("Sign Up")),
      
      
          
        ],
      ),),
    );
  }
}