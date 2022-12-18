import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sgm_du_gu_we/screens/email_verification_screen.dart';
import 'package:sgm_du_gu_we/screens/splash_screen.dart';
import 'constants.dart';
import 'screens/main_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

/*void main() => runApp(
      SGMDuGuWe(),
    );*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SGMDuGuWe());
}

class SGMDuGuWe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kSGMColorGreen,
        scaffoldBackgroundColor: kSGMColorGreenLight,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kSGMColorRed),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        MainScreen.id: (context) => MainScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        EmailVerificationScreen.id: (context) => EmailVerificationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
