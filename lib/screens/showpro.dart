import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowProfile extends StatelessWidget {
  const ShowProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
         appBar: AppBar(
           backgroundColor: Color.fromARGB(255, 18, 14, 99),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                image: AssetImage("lib/assets/Logo.png"),
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.2, 0, 0, 0),
                child: Image(
                  image: AssetImage("lib/assets/profile image.png"),
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
              ),
            ],
          ),
          leading: IconButton(
             icon: Icon(
              CupertinoIcons.equal_square_fill,
              color: Color.fromARGB(255, 18, 14, 99),
              size: 40,
            ),
            onPressed: () {
              // _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Color.fromARGB(255, 18, 14, 99),
                    height: MediaQuery.of(context).size.height*0.3,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,100, 0, 0),
                    child: Center(
                      child: Container(
                       
                        height: MediaQuery.of(context).size.height*0.6,
                        width: MediaQuery.of(context).size.width*0.9,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        ),
                        child: Column(
                          children: [
                             
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Icon(CupertinoIcons.checkmark_seal_fill,color: Colors.green,size: 100,),
                             ),
                             Text("Transfer Successfull!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                             Center(child: SizedBox(width:300 ,child:Text("Your coins hs been transferred successfully!",textAlign: TextAlign.center,style: TextStyle(color: Colors.black45,fontSize: 18),))),
                             Padding(
                               padding: const EdgeInsets.all(18.0),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Text(
                                    "Transferred",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 18, 14, 99).withOpacity(0.4),
                                    ),
                                  ),
                                  Text(
                                    "450",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 18, 14, 99),
                                    ),
                                  ),
                               ],),
                             ),
                             //--------------------------------------------
                             Padding(
                               padding: const EdgeInsets.all(18.0),
                               child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black.withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Row(children: [
                                  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("lib/assets/profile image.png"),
                                    fit: BoxFit.contain,
                                    height: MediaQuery.of(context).size.height * 0.06,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                     Text(
                                            "Manas",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 18, 14, 99),
                                            ),
                                          ),
                                          Text(
                                            "98765450",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 18, 14, 99),
                                            ),
                                          ),
                                    ],
                                  ),
                                )
                               
                                ],),
                               ),
                             ),
                           //-----------------------
                            Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Text(
                                    "Date & time",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 18, 14, 99).withOpacity(0.4),
                                    ),
                                  ),
                                  Text(
                                    "12 Feb 2024, 10:30 PM",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 18, 14, 99),
                                    ),
                                  ),
                               ],),
                             ),
                             //----------------------
                              Padding(
                               padding: const EdgeInsets.all(18.0),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Text(
                                    "No Reff.",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 18, 14, 99).withOpacity(0.4),
                                    ),
                                  ),
                                  Text(
                                    "11121321323134",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 18, 14, 99),
                                    ),
                                  ),
                               ],),
                             ),
                            //-------------------
                            // Center(
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(28.0),
                            //     child: Image(
                            //       image: AssetImage("lib/assets/profile image.png"),
                            //       fit: BoxFit.contain,
                            //       height: MediaQuery.of(context).size.height * 0.1,
                            //     ),
                            //   ),
                            // ),
                    
                            // Center(
                            //   child: Text(
                            //     "Manan Agarwal",
                            //     style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 176, 69, 69)),
                            //   ),
                            // ),
                            // //--------------------
                            //  Center(
                            //    child: Text(
                            //     "34567 Coins",
                            //     style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 240, 119, 119)),
                            //                          ),
                            //  ),
                            
                            //---------------------
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //-----------------

              //------------------

              //-------------
              //--------------------
             

              //----------------
                
              //------------------
            ],
          ),
        ),
      ),
    );
  }
}