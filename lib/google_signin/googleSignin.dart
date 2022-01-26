// ignore_for_file: file_names, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:reading_app/services/gLogin.dart';
import 'package:reading_app/resource/colors.dart';

//import 'package:task_bites/login/otp_field.dart';
final GoogleSignIn goSignin = GoogleSignIn();

class GoogleLogin extends StatefulWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  bool signedIn = false;

  loginUser() {
    goSignin.signIn();
  }
  // void _otpPage(context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(builder: (_) => const OtpPage()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Welcome to",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            const Text(
              "Writicles",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            GoogleAuthButton(
//              key: const ValueKey<String>(''),
              onPressed: () {
                final provider =
                    Provider.of<GoogleLoginProvider>(context, listen: false);
                provider.googleSignIn();
              },
              text: 'Sign in with Google',
              darkMode: false,
              rtl: false,
              style: AuthButtonStyle(
                buttonColor: Colors.white,
                splashColor: Colors.grey.shade100,
                shadowColor: Colors.grey,
                borderColor: ThemeClr,
                borderRadius: 8.0,
                borderWidth: 2.0,
                elevation: 5.0,
                width: 280.0,
                height: 50.0,
                separator: 10.0,
                iconSize: 35.0,
                iconBackground: Colors.transparent,
                iconType: AuthIconType.outlined,
                buttonType: AuthButtonType.secondary,
                padding: const EdgeInsets.all(8.0),
                textStyle: const TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.50,
                ),
                progressIndicatorColor: Colors.red,
                progressIndicatorValueColor: Colors.amber,
                progressIndicatorStrokeWidth: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
