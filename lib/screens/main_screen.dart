import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/registration_screen.dart';
import '../text_styles.dart';
import '../constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static const String id = 'main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Center(
              child: TextSubtitle(
                text: 'Herzlich willkommen bei der',
              ),
            ),
            const Center(
              child: TextTitle(
                text: 'SGM Durchhausen/',
              ),
            ),
            const Center(
              child: TextTitle(
                text: 'Gunningen/Weigheim!',
              ),
            ),
            const CircleAvatar(
              radius: 100.0,
              backgroundImage:
                  AssetImage('images/SGM_Durchhausen_Gunningen.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kEdgeInset,
              ),
              child: Material(
                color: kSGMColorGreen,
                borderRadius: BorderRadius.circular(kBorderRadius),
                elevation: kElevation,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: kMinWidth,
                  height: kHeight,
                  child: TextInButton(
                    text: 'Anmelden',
                  ),
                ),
              ),
            ),
            const Text(
              'Noch kein Mitglied? Jetzt registrieren!',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 14.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kEdgeInset,
              ),
              child: Material(
                color: kSGMColorGreen,
                borderRadius: BorderRadius.circular(kBorderRadius),
                elevation: kElevation,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: kMinWidth,
                  height: kHeight,
                  child: TextInButton(
                    text: 'Registrieren',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
