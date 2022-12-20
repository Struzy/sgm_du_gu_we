import 'package:flutter/material.dart';
import '../styles/button_styles.dart';
import '../constants.dart';
import '../screens/login_screen.dart';
import '../screens/registration_screen.dart';
import '../styles/text_styles.dart';

class MainScreen extends StatelessWidget {
  static const String id = 'main_screen';

  final year = DateTime.now().year;
  final month = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kEdgeInset,
                  horizontal: 50.0,
                ),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50.0),
                    backgroundColor: kSGMColorGreen,
                    foregroundColor: Colors.black,
                  ),
                  icon: Icon(
                    Icons.login,
                    size: 24.0,
                  ),
                  label: Text(
                    'Anmelden',
                    style: TextStyle(
                      fontFamily: kSourceSansPro,
                      fontSize: kFontsizeButton,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
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
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kEdgeInset,
                  horizontal: 50.0,
                ),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50.0),
                    backgroundColor: kSGMColorGreen,
                    foregroundColor: Colors.black,
                  ),
                  icon: Icon(
                    Icons.app_registration,
                    size: 24.0,
                  ),
                  label: Text(
                    'Registrieren',
                    style: TextStyle(
                      fontFamily: kSourceSansPro,
                      fontSize: kFontsizeButton,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                ),
              ),
              Text(
                'Besuchen Sie uns auch auf',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    height: 30.0,
                    width: 30.0,
                    child: Image(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1024px-Instagram_logo_2022.svg.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    child: Image(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Facebook_Home_logo_old.svg/1024px-Facebook_Home_logo_old.svg.png',
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black54,
              ),
              Text(
                'Copyright © $month/$year',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SGM Durchhausen/Gunningen/Weigheim',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'All Rights Reserved.',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
