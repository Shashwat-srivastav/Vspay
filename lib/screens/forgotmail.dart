import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vspay/screens/otp.dart';
import 'package:vspay/screens/signin.dart';

class ForgotMail extends StatelessWidget {
  const ForgotMail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                    0,
                    MediaQuery.of(context).size.width * 0.2,
                    MediaQuery.of(context).size.width * 0.2,
                    0),
                child: Text(
                  "Forgot User ID ?  ",
                  style: TextStyle(
                      fontSize: 36,
                      color: Color.fromARGB(255, 18, 14, 99),
                      fontWeight: FontWeight.bold),
                ),
              ),
              //-------------------
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Don’t worry! It happens. Please enter the Mail ID associated with your account.",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 18),
                ),
              ),
          
              //--------------------
              Padding(
                padding: EdgeInsets.fromLTRB(
                    8, MediaQuery.of(context).size.width * 0.07, 8, 8),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, 0, MediaQuery.of(context).size.width * 0.75, 0),
                      child: Text(
                        "Mail ID",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Mail ID",
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
              //----------------
          
              //-------------------
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('Button Pressed');
                    Get.to(OTPverify());
                  },
                  child: Text(
                    'Send Code',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Passsword?",
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(SignIn());
                      },
                      child: Text("Log In ")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
