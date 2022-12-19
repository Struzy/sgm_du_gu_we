import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sgm_du_gu_we/screens/registration_screen.dart';
import '../authentication_service.dart';
import '../constants.dart';
import '../text_styles.dart';
import 'main_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  static const String id = 'email_verification_screen';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  bool isEmailVerified = false;
  Timer? timer;
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    try {
      _auth.currentUser?.sendEmailVerification();
    } catch (e) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Fehler!'),
          content: Text(e.toString()),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
    timer =
        Timer.periodic(const Duration(seconds: 3), (_) => checkEmailVerified());
  }

  checkEmailVerified() async {
    await _auth.currentUser?.reload();

    setState(() {
      isEmailVerified = _auth.currentUser!.emailVerified;
    });

    if (isEmailVerified) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Email erfolgreich verifiziert"),
        ),
      );

      timer?.cancel();

      Navigator.pushNamed(context, MainScreen.id);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 35),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'Überprüfen Sie Ihre Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Center(
                  child: Text(
                    'Eine Email wurde an ${_auth.currentUser?.email} gesendet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: CircularProgressIndicator(
                  backgroundColor: kSGMColorRed,
                  color: kSGMColorGreen,
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Center(
                  child: Text(
                    'Email verifizieren...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 57),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Material(
                  color: kSGMColorGreen,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  elevation: kElevation,
                  child: MaterialButton(
                    onPressed: () {
                      try {
                        _auth.currentUser?.sendEmailVerification();
                      } catch (e) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Fehler!'),
                            content: Text(e.toString()),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    minWidth: kMinWidth,
                    height: kHeight,
                    child: TextInButton(
                      text: 'Erneut senden',
                    ),
                  ),
                ),

                /*ElevatedButton(
                  child: const Text('Erneut senden'),
                  onPressed: () {
                    try {
                      _auth.currentUser?.sendEmailVerification();
                    } catch (e) {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Fehler!'),
                          content: Text(e.toString()),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),*/
              ),
            ],
          ),
        ),
      ),
    );
  }
}
