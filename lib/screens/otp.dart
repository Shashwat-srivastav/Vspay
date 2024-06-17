import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:vspay/screens/resetpass.dart';
import 'package:vspay/screens/signin.dart';

class OTPverify extends StatelessWidget {
  const OTPverify({super.key});

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
                    0,
                    // MediaQuery.of(context).size.width * 0.2,
                    0),
                child: Text(
                  "Please Enter OTP ",
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
                  "We’ve sent a code to +91 9876543210",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 18),
                ),
              ),
          
              //--------------------
              Padding(
                padding: EdgeInsets.fromLTRB(
                    8, MediaQuery.of(context).size.width * 0.06, 8, 8),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PinInputTextField(
                        pinLength: 5,
                        decoration: BoxLooseDecoration(
                            strokeColorBuilder:
                                FixedColorBuilder(Colors.black)))),
              ),
              //----------------
              Padding(
                padding: EdgeInsets.fromLTRB(
                    8, MediaQuery.of(context).size.width * 0.06, 8, 8),
                child: Text(
                  "We’ve sent a code to dash@gmail.com",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 18),
                ),
              ),
          
              //----------------
              Padding(
                padding: EdgeInsets.fromLTRB(
                    8, MediaQuery.of(context).size.width * 0.06, 8, 8),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PinInputTextField(
                        pinLength: 5,
                        decoration: BoxLooseDecoration(
                            strokeColorBuilder:
                                FixedColorBuilder(Colors.black)))),
              ),
              //-------------------
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('Button Pressed');
                    Get.to(ResetPassword());
                  },
                  child: Text(
                    'Verify',
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
                    "Send Code Again",
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(SignIn());
                      },
                      child: Text("Send")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
