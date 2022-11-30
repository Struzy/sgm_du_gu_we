import 'package:flutter/material.dart';
import '../button_styles.dart';
import '../constants.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSGMColorGreen,
        title: Text('Anmeldung'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'SGM_Durchhausen_Gunningen',
              child: Container(
                height: 300.0,
                child: Image.asset('images/SGM_Durchhausen_Gunningen.jpg'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                icon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'E-Mail eingeben',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kSGMColorGreen, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                icon: Icon(
                  Icons.password,
                  color: Colors.black,
                ),
                hintText: 'Passwort eingeben',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kSGMColorGreen, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Anmelden',
              destination: HomeScreen.id,
            ),
          ],
        ),
      ),
    );
  }
}
