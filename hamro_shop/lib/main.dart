import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hamro_shop/Views/login_view.dart';
import 'package:hamro_shop/Views/signup_view.dart';
import 'dart:ui' show PointerDeviceKind;
import 'package:hamro_shop/core/app_theme.dart';
import 'package:hamro_shop/firebase_options.dart';
import 'package:hamro_shop/src/view/screen/home_screen.dart';

void main () async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);


  
   runApp(const MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/login',
    routes: {
      '/login': (context) => LoginPage(),
      '/signup': (context) => SignupPage(),
    },
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: AppTheme.lightAppTheme,
    );
  }
}
