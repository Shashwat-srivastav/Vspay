import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vspay/screens/dash.dart';
import 'package:vspay/screens/history.dart';
import 'package:vspay/screens/payment.dart';
import 'package:vspay/screens/profile.dart';

class ADDCARD extends StatefulWidget {
  const ADDCARD({super.key});

  @override
  State<ADDCARD> createState() => _ADDCARDState();
}

class _ADDCARDState extends State<ADDCARD> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });

      switch (index) {
        case 0:
          Get.to(()=>Dashboard());
          break;
        case 4:
          Get.to(() => ProfileP());
          break;
      }
    }
      final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
         appBar: AppBar(
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
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Padding(
              //   padding: EdgeInsets.fromLTRB(
              //       0, MediaQuery.of(context).size.width * 0.1, 0, 0),
              //   child: Container(
              //     width: MediaQuery.of(context).size.width * 0.8,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: [
              //         Image(
              //           image: AssetImage("lib/assets/Logo.png"),
              //           fit: BoxFit.contain,
              //           height: MediaQuery.of(context).size.height * 0.04,
              //         ),
              //         Padding(
              //           padding: EdgeInsets.fromLTRB(
              //               MediaQuery.of(context).size.width * 0.1, 0, 0, 0),
              //           child: Image(
              //             image: AssetImage("lib/assets/profile image.png"),
              //             fit: BoxFit.contain,
              //             height: MediaQuery.of(context).size.height * 0.04,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              //-----------------
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 240, 20),
                child: Text(
                  "ADD CARD",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              //------------------

              //----------------
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0,
                                MediaQuery.of(context).size.width * 0.58, 0),
                            child: Text(
                              "Card Holder Name",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black38),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.3))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.3)))),
                            ),
                          ),
                          //----------------------
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0,
                                MediaQuery.of(context).size.width * 0.65, 0),
                            child: Text(
                              "Card Number",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black38),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "XXXX-XXXX-XXXX-XXXX",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.3))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.3)))),
                            ),
                          ),
                          //----------------------
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0,
                                MediaQuery.of(context).size.width * 0.7, 0),
                            child: Text(
                              "Card Type",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black38),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Type",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.3))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.3)))),
                            ),
                          ),
                          //----------------------
                        ],
                      ),
                    ),
                    //-------------------------
                    Row(children: [
                   Flexible(
                     child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0,
                                      MediaQuery.of(context).size.width * 0.75, 0),
                                  child: Text(
                                    "Expiry",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black38),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "MM/YY",
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black
                                                    .withOpacity(0.3))),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black
                                                    .withOpacity(0.3)))),
                                  ),
                                ),
                                //----------------------
                              ],
                            ),
                          ),
                   ),
                   //---------------
                  //  Flexible(
                  //         child: Container(
                  //           child: Column(
                  //             children: [
                  //               Padding(
                  //                 padding: EdgeInsets.fromLTRB(
                  //                     0,
                  //                     0,
                  //                     MediaQuery.of(context).size.width * 0.4,
                  //                     0),
                  //                 child: Text(
                  //                   "CVV",
                  //                   style: TextStyle(
                  //                       fontSize: 16, color: Colors.black38),
                  //                 ),
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.all(8.0),
                  //                 child: TextField(
                  //                   decoration: InputDecoration(
                  //                       // hintText: "Type",
                  //                       enabledBorder: OutlineInputBorder(
                  //                           borderSide: BorderSide(
                  //                               color: Colors.black
                  //                                   .withOpacity(0.3))),
                  //                       border: OutlineInputBorder(
                  //                           borderSide: BorderSide(
                  //                               color: Colors.black
                  //                                   .withOpacity(0.3)))),
                  //                 ),
                  //               ),
                  //               //----------------------
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                     
                    ],),

                    //-----------------------

                    //---------------

                    //---------------

                    //--------------------

                    //---------------
                    
                  ],
                ),
              ),

              //-------------------
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "ADD",
                    style: TextStyle(fontSize: 20),
                  ))
              //------------------
            ],
          ),
        ),
        //--------------------
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          elevation: 0,
          notchMargin: 4.0,
          child: SingleChildScrollView(
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(null), // This will be an empty item in the middle
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          backgroundColor: Color.fromARGB(255, 18, 14, 99),
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
           drawer:
              //////
              Drawer(
            elevation: 0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(

                      // color: Colors.blue,
                      ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width * 0.01,
                            MediaQuery.of(context).size.width * 0.2,
                            0,
                            0),
                        child: Image(
                          image: AssetImage("lib/assets/profile image.png"),
                          fit: BoxFit.contain,
                          height: MediaQuery.of(context).size.height * 0.08,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            10, MediaQuery.of(context).size.width * 0.25, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Emma Watson",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "emmawatson@gpay.com",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_sharp),
                  title: Text('Payment'),
                  onTap: () {
                    // Handle the tap event here
                    Get.to(() => Payment()); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.compare_arrows),
                  title: Text('Transaction'),
                  onTap: () {
                    // Handle the tap event here
                    Get.to(() => History());
                    // Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text('Profile'),
                  onTap: () {
                    // Handle the tap event here
                    Get.to(() => ProfileP());
                    // Navigator.pop(context); // Close the drawer
                  },
                ),
              ],
            ),
          )

      ),
    );
  }
}
