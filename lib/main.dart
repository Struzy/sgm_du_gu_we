import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(
      SGMDuGuWe(),
    );

class SGMDuGuWe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/third',
      routes: {
        '/': (context) => MainScreen(),
        '/first': (context) => RegistrationScreen(),
        '/second': (context) => LoginScreen(),
        '/third': (context) => HomeScreen(),
      },
    );
  }
}
