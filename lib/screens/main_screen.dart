import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/login_screen.dart';
import '../screens/registration_screen.dart';

class MainScreen extends StatelessWidget {
  static const String id = 'main_screen';

  final year = DateTime.now().year;
  final month = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50.0,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Hero(
                  tag: 'SGM_Durchhausen_Gunningen',
                  child: CircleAvatar(
                    radius: kRadiusCircleAvatar,
                    backgroundImage:
                        AssetImage('images/SGM_Durchhausen_Gunningen.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 50.0,
                    right: 50.0,
                    bottom: 8.0,
                  ),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50.0),
                      backgroundColor: kSGMColorGreen,
                      foregroundColor: Colors.black,
                    ),
                    icon: const Icon(
                      Icons.login,
                      size: 24.0,
                    ),
                    label: const Text(
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
                const Text(
                  'Noch kein Nutzer? Jetzt registrieren!',
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
                    horizontal: 50.0,
                  ),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50.0),
                      backgroundColor: kSGMColorGreen,
                      foregroundColor: Colors.black,
                    ),
                    icon: const Icon(
                      Icons.app_registration,
                      size: 24.0,
                    ),
                    label: const Text(
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
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Besuchen Sie uns auch auf',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: AlignmentDirectional.bottomCenter,
                      height: 30.0,
                      width: 30.0,
                      child: const Image(
                        image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1024px-Instagram_logo_2022.svg.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const SizedBox(
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
                const Divider(
                  color: Colors.black54,
                ),
                Text(
                  'Copyright © $month/$year',
                  style: const TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'SGM Durchhausen/Gunningen/Weigheim',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
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
      ),
    );
  }
}
