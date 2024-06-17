import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vspay/screens/signin.dart';
import 'package:vspay/screens/verifywithotp.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, MediaQuery.of(context).size.width * 0.08, 0, 0),
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
                    10, MediaQuery.of(context).size.width * 0.08, 0, 0),
                child: Row(
                  children: [
                    Text(
                      "Sign Up ",
                      style: TextStyle(
                          fontSize: 36,
                          color: Color.fromARGB(255, 18, 14, 99),
                          fontWeight: FontWeight.bold),
                    ),
                    Image(
                      image: AssetImage("lib/assets/image 296.png"),
                      height: MediaQuery.of(context).size.height * 0.04,
                    )
                  ],
                ),
              ),
              
                
              //-------------------
              // Row(
              //    children: [
                 
              //     TextField(
              //       decoration: InputDecoration(
              //           hintText: "User ID",
              //           enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                   color: Colors.black.withOpacity(0.3))),
              //           border: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                   color: Colors.black.withOpacity(0.3)))),
              //     ),
          
              //    ],
              // ),
              //-------------------
              Row(
                 children: [
                  Flexible(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                         Padding(
                           padding:  EdgeInsets.fromLTRB(0, 0,
                                MediaQuery.of(context).size.width * 0.24, 0),
                           child: Text(
                              "Full Name",
                              style: TextStyle(fontSize: 16),
                            ),
                         ),
                        TextField(
                            // maxLength: 20,
                            decoration: InputDecoration(
                                hintText: "Full Name",
                                // suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3)))),
                          ),
                      ],
                    ),
                  ),
                  ),
                  // TextField()
                                  Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0,
                                MediaQuery.of(context).size.width * 0.24, 0),
                              child: Text(
                              "User Name",
                              style: TextStyle(fontSize: 16),
                                                        ),
                            ),
                            TextField(
                              // maxLength: 20,
                            decoration: InputDecoration(
                                hintText: "User Name",
                                // suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.3)))),
                                              ),
                          ],
                        ),
                      ),
                  ),
                 ],
              ),
              //----------------------
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 0, MediaQuery.of(context).size.width * 0.85, 0),
                    child: Text(
                      "Mail",
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
              //----------------------
                 Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 0, MediaQuery.of(context).size.width * 0.75, 0),
                    child: Text(
                      "Phone No.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Phone no.",
                          // suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
              //--------------------
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 0, MediaQuery.of(context).size.width * 0.65, 0),
                    child: Text(
                      "Create Password",
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
              //------------
               Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 0, MediaQuery.of(context).size.width * 0.6, 0),
                    child: Text(
                      "Confirm Password",
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
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(VerifywithOTP());
                    print('Button Pressed');
                  },
                  child: Text(
                    'Sign Up',
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
              TextButton(onPressed: () {
                Get.to(SignIn());
              }, child: Text("Already Have an Account ? Log In")),
            ],
          ),
        ),
      ),
    );
  }
}
