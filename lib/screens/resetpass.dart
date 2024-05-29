import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vspay/screens/forgotmail.dart';
import 'package:vspay/screens/forgotpass.dart';
import 'package:vspay/screens/signup.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.width * 0.1, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("lib/assets/Logo.png"),
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
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
              padding: EdgeInsets.fromLTRB(
                  10, MediaQuery.of(context).size.width * 0.2, 0, 0),
              child: Text(
                "Reset Password ",
                style: TextStyle(
                    fontSize: 36,
                    color: Color.fromARGB(255, 18, 14, 99),
                    fontWeight: FontWeight.bold),
              ),
            ),
            //-----------------
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Please type something you’ll remember",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.3), fontSize: 18),
              ),
            ),
            //-------------------
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.width * 0.06, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 0, MediaQuery.of(context).size.width * 0.7, 0),
                    child: Text(
                      "Old Password",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                             suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
            ),
            //--------------------
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, MediaQuery.of(context).size.width * 0.7, 0),
                  child: Text(
                    "New Password",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                           suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
          
            //-------------------
            Padding(
              padding: EdgeInsets.fromLTRB(
                  8,  MediaQuery.of(context).size.width * 0.1,8, 8),
              child: ElevatedButton(
                onPressed: () {
                  print('Button Pressed');
                },
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Color.fromARGB(255, 18, 14, 99),
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
