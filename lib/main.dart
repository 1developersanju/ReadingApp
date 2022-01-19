import 'dart:ffi';

import 'package:provider/provider.dart';
import 'package:reading_app/google_signin/authenticationScreen.dart';
import 'package:reading_app/google_signin/googleSignin.dart';
import 'package:reading_app/provider/gLogin.dart';
import 'package:reading_app/splash_screen.dart';
import 'package:reading_app/views/home_view/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleLoginProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Splash(),
      ),
    );
  }
}
