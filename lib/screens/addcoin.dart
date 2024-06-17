import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:vspay/screens/history.dart';
import 'package:vspay/screens/payment.dart';
import 'package:vspay/screens/profile.dart';
import 'package:vspay/screens/showpro.dart';

class ADDCOIN extends StatefulWidget {
  const ADDCOIN({super.key});

  @override
  _ADDCOINState createState() => _ADDCOINState();
}

class _ADDCOINState extends State<ADDCOIN> {
  String selectedValue = '+91';
 String text="";

   final FocusNode _focusNode = FocusNode();

   _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  @override
  void initState() {
    super.initState();
    // Request focus when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
  bool isFinished=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: MediaQuery.of(context).size.height * 0.056,
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

      //---------------------------
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8, MediaQuery.of(context).size.height*0.06, 8, 8),
            child: TextField(
              decoration: InputDecoration(
                
              fillColor: const Color.fromARGB(50, 151, 151, 151), 
                filled: true,
                // enabled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedValue,
                      items: <String>['+91', '+92'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,style: TextStyle(fontSize: 21),),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      // iconSize: 0, // To remove the default dropdown icon
                    ),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage("lib/assets/VSPAY.png"),
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.012,
                  ),
                ),
                
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                ),
                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),

                  borderSide: BorderSide(color: Colors.black.withOpacity(0.1),),
                ),
              ),
            ),
          ),
          //---------------------------------
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Balance",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,
                   color:  Color.fromARGB(255, 18, 14, 99),
                  ),),
                 Text(
                  "7700",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 18, 14, 99),
                  ),
                ),
              ],
            ),
          ),
          //--------------------------------
          Padding(
            padding: EdgeInsets.fromLTRB(
                8, MediaQuery.of(context).size.height * 0.06, 8, 8),
            child: Text(
              
             text,
                style: TextStyle(
                    color: Color.fromARGB(255, 18, 14, 99), fontSize: 24)
              ),
            ),
          
          //------------------------------------------
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NumericKeyboard(
              rightIcon: Icon(CupertinoIcons.arrow_left_circle,size: 45,color: Color.fromARGB(255, 18, 14, 99) ,),
              rightButtonFn: () {
                
                setState(() {
                 text = text.substring(0, text.length - 1);
                });
              },
              textStyle: TextStyle(color: Color.fromARGB(255, 18, 14, 99),fontSize: 24 ),
            
              onKeyboardTap: _onKeyboardTap
            ),
          ),
//--------------------------------------------
          Padding(
            padding: const EdgeInsets.all(50),
            child: Center(
                child: SwipeableButtonView(
              buttonText: 'Slide to Pay',
              buttontextstyle:
                  const TextStyle(fontSize: 25, color: Colors.white),
              buttonWidget: const Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.grey),
              activeColor: const Color.fromARGB(255, 18, 14, 99),
              onWaitingProcess: () {
                // - - -
                // Amount of time the circular progress
                // indicator spins before navigating to next page
                //- - -
                Future.delayed(const Duration(seconds: 2),
                    () => setState(() => isFinished = true));
              },
              isFinished: isFinished,
              onFinish: () async {
                // - - - Navigate to confirmation page - - -
                await Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: ShowProfile()));
                // - - - Reset isFinished variable  - - -
                setState(() => isFinished = false);
              },
            )),
          ),
///------------------------------------------
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text("Don’t have sufficient Coins?"),
    TextButton(onPressed: (){}, child: Text("Buy More",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 18, 14, 99),
                      ),
                    ))],
  ),
)

          //---------------------------------
        ],
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

    );
  }
}
