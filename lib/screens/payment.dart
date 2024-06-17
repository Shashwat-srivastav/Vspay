import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:vspay/screens/showpro.dart';

class Payment extends StatefulWidget {
  const Payment ({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String text = "";
    bool isFinished = false;

  final FocusNode _focusNode = FocusNode();
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

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
          
          icon: Icon(CupertinoIcons.equal_square_fill,color: Color.fromARGB(255, 18, 14, 99),size: 40,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
    
      //---------------------------
      body: Column(
        children: [
         
          //---------------------------------
          Padding(
            padding:  EdgeInsets.fromLTRB(8, MediaQuery.of(context).size.height*0.08, 8, 8),
            child: Container(
              height: MediaQuery.of(context).size.height*0.07,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(50, 151, 151, 151)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Work Balance",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 18, 14, 99),
                      ),
                    ),
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
            ),
          ),
          //--------------------------------
          Padding(
            padding: EdgeInsets.fromLTRB(
                8, MediaQuery.of(context).size.height * 0.08, 8, 8),
            child: Text("INR "+text,
                style: TextStyle(
                    color: Color.fromARGB(255, 18, 14, 99), fontSize: 24)),
          ),
           //-------------------------------------
           Text("4,500 Coins",
              style: TextStyle(
                  color: Color.fromARGB(255, 18, 14, 99), fontSize: 20)),
    
    
          //------------------------------------------
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NumericKeyboard(
                rightIcon: Icon(
                  CupertinoIcons.arrow_left_circle,
                  size: 45,
                  color: Color.fromARGB(255, 18, 14, 99),
                ),
                rightButtonFn: () {
                  setState(() {
                    text = text.substring(0, text.length - 1);
                  });
                },
                textStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 14, 99), fontSize: 30),
                onKeyboardTap: _onKeyboardTap),
          ),
          //--------------------------------
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
                        type: PageTransitionType.fade,
                        child: ShowProfile()));
                // - - - Reset isFinished variable  - - -
                setState(() => isFinished = false);
              },
            )),
          ),
    //--------------------------------------------
    // Padding(
    //   padding: EdgeInsets.fromLTRB(
    //             8, MediaQuery.of(context).size.height * 0.09, 8, 8),
    //   child: Stack(
    // children: [
    //   // Container(
    //   //   height: MediaQuery.of(context).size.height*0.08,
    //   //   decoration: BoxDecoration(
    //   //     color:  Color.fromARGB(255, 18, 14, 99),
    //   //     borderRadius: BorderRadius.circular(100)
    //   //   ),
    //   // ),
    //   // Container()
    // ],
    //   ),
    // ),
          ///------------------------------------------
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Note : For Every 1 INR You Will Get 0.5 Coins",style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.w600,color: Colors.red),),
          )
    
          //---------------------------------
        ],
      ),
    );
  }
}