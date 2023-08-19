import 'package:flutter/material.dart';
import 'package:project_iti/firebase_options.dart';
import 'package:project_iti/login/login.dart';
import 'package:project_iti/login/onboarding.dart';
import 'package:project_iti/login/sing_up.dart';
import 'package:project_iti/login/welcome.dart';
import 'package:project_iti/models/description.dart';
import 'package:project_iti/models/home_screen.dart';
import 'package:project_iti/models/product.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_iti/models/shopping.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  OnBoarding_Screen(),

      routes: {
        'login' : (context) => LoginScreen(),
       'sing_up' : (context) => Sing_upScreen(),
       // 'details' : (context) =>  Description,
      },
      );


  }
}

