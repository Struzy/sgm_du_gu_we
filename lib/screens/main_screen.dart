import 'package:flutter/material.dart';
import '../button_styles.dart';
import '../constants.dart';
import '../screens/login_screen.dart';
import '../screens/registration_screen.dart';
import '../text_styles.dart';

class MainScreen extends StatelessWidget {
  static const String id = 'main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: TextSubtitle(
                text: 'Herzlich willkommen bei der',
              ),
            ),
            Center(
              child: TextTitle(
                text: 'SGM Durchhausen/',
              ),
            ),
            Center(
              child: TextTitle(
                text: 'Gunningen/Weigheim!',
              ),
            ),
            Hero(
              tag: 'SGM_Durchhausen_Gunningen',
              child: Container(
                child: CircleAvatar(
                  radius: kRadiusCircleAvatar,
                  backgroundImage:
                      AssetImage('images/SGM_Durchhausen_Gunningen.jpg'),
                ),
              ),
            ),
            RoundedButton(
              title: 'Anmelden',
              destination: LoginScreen.id,
            ),
            Text(
              'Noch kein Mitglied? Jetzt registrieren!',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 14.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            RoundedButton(
              title: 'Registrieren',
              destination: RegistrationScreen.id,
            ),
          ],
        ),
      ),
    );
  }
}
