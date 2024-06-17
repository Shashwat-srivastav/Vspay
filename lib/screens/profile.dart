import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vspay/screens/addcard.dart';
import 'package:vspay/screens/dash.dart';
import 'package:vspay/screens/history.dart';
import 'package:vspay/screens/payment.dart';
import 'package:vspay/screens/personaldet.dart';
import 'package:vspay/screens/showpro.dart';

class ProfileP extends StatefulWidget {
  const ProfileP({super.key});

  @override
  State<ProfileP> createState() => _ProfilePState();
}

class _ProfilePState extends State<ProfileP> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
        switch (index) {
        case 0:
          Get.to(() => Dashboard());
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
              _scaffoldKey.currentState?.openDrawer();
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
                    height: 240,
                  ),
                  Column(
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
                      //           height:
                      //               MediaQuery.of(context).size.height * 0.04,
                      //         ),
                      //         Padding(
                      //           padding: EdgeInsets.fromLTRB(
                      //               MediaQuery.of(context).size.width * 0.2,
                      //               0,
                      //               0,
                      //               0),
                      //           child: Image(
                      //             image: AssetImage(
                      //                 "lib/assets/profile image.png"),
                      //             fit: BoxFit.contain,
                      //             height:
                      //                 MediaQuery.of(context).size.height * 0.04,
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      //-------------------
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Image(
                            image: AssetImage("lib/assets/profile image.png"),
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Manan Agarwal",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      //--------------------
                       Center(
                         child: Text(
                          "34567 Coins",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                                               ),
                       ),
                      
                      //---------------------
                    ],
                  ),
                ],
              ),

              //-----------------

              //------------------

              //-------------
              //--------------------
              Padding(
                padding: EdgeInsets.fromLTRB(
                    10,
                    MediaQuery.of(context).size.width * 0.02,
                    10,
                    0),
                child: Container(
                 
                  decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 246, 246, 250),
                        borderRadius: BorderRadius.circular(10)
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Personal"),
                        IconButton(onPressed: (){
                        Get.to(PersonalDet());
                      }, icon: Icon(Icons.arrow_forward_ios,),)
                    
                      ],
                    ),
                  ),
                )
               
              ),

              //----------------
                 Padding(
                  padding: EdgeInsets.fromLTRB(
                      10, MediaQuery.of(context).size.width * 0.02, 10, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 246, 246, 250),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add Card"),
                          IconButton(
                            onPressed: () {
                              Get.to(ADDCARD());
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          )
                        ],
                      ),
                    ),
                  )),

              //-------------------

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
