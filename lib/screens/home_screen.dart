import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sgm_du_gu_we/constants.dart';
import 'package:sgm_du_gu_we/services/authentication_service.dart';
import 'package:sgm_du_gu_we/screens/main_screen.dart';
import 'package:sgm_du_gu_we/styles/text_styles.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  /*final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  init

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser!;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: kSGMColorGreen,
        title: Text('Hauptmenü'),
      ),
      body: Center(
        child: Text('Hauptmenü'),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: kSGMColorGreen,
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 52,
              backgroundImage: NetworkImage(
                  'https://cdn.fussball.de/public/02IV7D16VC000000VS5489B8VV1J2EVP.web'),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Manuel Struzyna',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            Text(
              'manuel.struzyna@outlook.de',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Column(children: [
        ListTile(
          leading: Icon(Icons.home),
          title: TextBurgerMenu(
            text: 'Hauptmenü',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.library_music),
          title: TextBurgerMenu(
            text: 'Mediathek',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.video_collection),
          title: TextBurgerMenu(
            text: 'Videothek',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.image),
          title: TextBurgerMenu(
            text: 'Galerie',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(
          color: Colors.black54,
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: TextBurgerMenu(
            text: 'Abmelden',
          ),
          onTap: () {
            AuthenticationService.signOut(context: context);
            Navigator.pushNamed(context, MainScreen.id);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Erfolgreich abgemeldet'),
              ),
            );
          },
        ),
      ]);
}
