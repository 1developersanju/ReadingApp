// ignore_for_file: use_key_in_widget_constructors
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:reading_app/google_signin/authenticationScreen.dart';
import 'package:reading_app/resource/colors.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        backgroundColor: Colors.white,
      ),
      home: AnimatedSplashScreen(
          duration: 3000,
          centered: true,
          splash: const Text(
            "Writicles",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: ThemeClr),
          ),
          nextScreen: DecideLogin(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}
