import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vspay/screens/personaldet.dart';
import 'package:vspay/screens/profile.dart';
import 'package:vspay/screens/signin.dart';
import 'package:vspay/screens/signup.dart';
import 'screens/dash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SignIn(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
 MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}