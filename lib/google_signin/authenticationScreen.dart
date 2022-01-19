// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:reading_app/google_signin/googleSignin.dart';
import 'package:reading_app/resource/colors.dart';
import 'package:reading_app/views/home_view/home.dart';

// ignore_for_file: file_names, use_key_in_widget_constructors

class DecideLogin extends StatelessWidget {
  const DecideLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(
                color: darkGreen,
              ));
            } else if (snapshot.hasData) {
              return MyHomePage();
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Something Went wrong"),
              );
            } else {
              return const GoogleLogin();
            }
          }),
    );
  }
}
