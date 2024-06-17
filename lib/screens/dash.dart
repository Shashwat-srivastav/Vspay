import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vspay/screens/addcard.dart';
import 'package:vspay/screens/addcoin.dart';
import 'package:vspay/screens/history.dart';
import 'package:vspay/screens/payment.dart';
import 'package:vspay/screens/profile.dart';
import 'package:vspay/screens/showpro.dart';
import 'package:vspay/screens/wallet.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });

      switch (index) {
        case 4:
          Get.to(() => ProfileP());
          break;
      }
    }

    return Scaffold(
      key:_scaffoldKey,
        //=-----------------
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
        //-------------------
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
              //     child:
              //     // Row(
              //     //   mainAxisAlignment: MainAxisAlignment.end,
              //     //   children: [
              //     //     Image(
              //     //       image: AssetImage("lib/assets/Logo.png"),
              //     //       fit: BoxFit.contain,
              //     //       height: MediaQuery.of(context).size.height * 0.04,
              //     //     ),
              //     //     Padding(
              //     //       padding: EdgeInsets.fromLTRB(
              //     //           MediaQuery.of(context).size.width * 0.1, 0, 0, 0),
              //     //       child: Image(
              //     //         image: AssetImage("lib/assets/profile image.png"),
              //     //         fit: BoxFit.contain,
              //     //         height: MediaQuery.of(context).size.height * 0.04,
              //     //       ),
              //     //     ),

              //     //   ],
              //     // ),
              //   ),
              // ),
              //------------------
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.02,
                    MediaQuery.of(context).size.width * 0.1,
                    0,
                    MediaQuery.of(context).size.width * 0.06),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 18, 14, 99),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image(
                    image: AssetImage("lib/assets/Group 3.png"),
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                ),
              ),

              //-------------------
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("lib/assets/money-send.png"),
                                fit: BoxFit.contain,
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Text(
                                "send",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 18, 14, 99),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.6),
                              width: 1.0)),
                    ),
                    //----------------------------
                    InkWell(
                      onTap: () => Get.to(() => ADDCOIN()),
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("lib/assets/card-add.png"),
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                                Text(
                                  "coin",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.6),
                                width: 1.0)),
                      ),
                    ),
                    //------------------------
                    InkWell(
                      onTap: () {
                        Get.to(History());
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      AssetImage("lib/assets/receipt-text.png"),
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                                Text(
                                  "History",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.6),
                                width: 1.0)),
                      ),
                    ),
                    //--------------------
                    InkWell(
                      onTap: () {
                        Get.to(Wallet());
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("lib/assets/Wallet.png"),
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                                Text(
                                  "wallet",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.6),
                                width: 1.0)),
                      ),
                    ),
                  ],
                ),
              ),

              //--------------------
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0,
                    MediaQuery.of(context).size.width * 0.02,
                    MediaQuery.of(context).size.width * 0.54,
                    0),
                child: Text(
                  "Recent Transaction",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),

              //----------------
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage("lib/assets/Shopping 1.png"),
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 18, 14, 99)),
                      ),
                      title: Text("Shopping"),
                      subtitle: Text("15 March 2021, 8:30 pm"),
                      trailing: Text(
                        '- 5000',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ),
                    //--------------------
                    ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage("lib/assets/Shopping 1.png"),
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 18, 14, 99)),
                      ),
                      title: Text("Payment"),
                      subtitle: Text("15 March 2021, 8:30 pm"),
                      trailing: Text(
                        '- 5000',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ),
                    //---------------
                    ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage("lib/assets/Shopping 1.png"),
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 18, 14, 99)),
                      ),
                      title: Text("Merchant"),
                      subtitle: Text("15 March 2021, 8:30 pm"),
                      trailing: Text(
                        '+ 5000',
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),

              //-------------------

              Padding(
                padding: EdgeInsets.fromLTRB(
                    0,
                    MediaQuery.of(context).size.width * 0.02,
                    MediaQuery.of(context).size.width * 0.54,
                    0),
                child: Text(
                  "Promotion",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
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
        //----------------

        //---------------------
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
                          MediaQuery.of(context).size.width * 0.01,  MediaQuery.of(context).size.width * 0.2, 0, 0),
                      child: Image(
                        image: AssetImage("lib/assets/profile image.png"),
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,
                          MediaQuery.of(context).size.width * 0.25,  0, 0),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Emma Watson" ,style: TextStyle(fontSize: 14),),
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
                Get.to(()=>Payment());// Close the drawer
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
                  Get.to(()=>ShowProfile());
                  // Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        )

        ///
        ///
        );
  }
}
