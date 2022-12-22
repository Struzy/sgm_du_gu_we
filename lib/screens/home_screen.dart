import 'package:flutter/material.dart';
import 'package:sgm_du_gu_we/constants.dart';
import 'package:sgm_du_gu_we/screens/first_squad_screen.dart';
import 'package:sgm_du_gu_we/screens/imprint_screen.dart';
import 'package:sgm_du_gu_we/services/authentication_service.dart';
import 'package:sgm_du_gu_we/screens/main_screen.dart';
import 'package:sgm_du_gu_we/styles/text_styles.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: kSGMColorGreen,
        title: const Text('Hauptmenü'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
        ),
        child: SafeArea(
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: Center(
                    child: TextSubtitle(
                      text: 'Durchhausen/Gunningen:',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.0,
                  ),
                  child: Image(
                    image: NetworkImage(
                      'https://images.media.fussball.de/userfiles/n/E/W/anvdDGNaRVzrCCDy2r5T70_t3.jpg',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Center(
                    child: TextSubtitle(
                      text: 'Weigheim:',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.0,
                  ),
                  child: Image(
                    image: NetworkImage(
                      'https://images.media.fussball.de/userfiles/w/e/K/sVNqBzZhx5ySXy1Fjc9i10_t3.jpg',
                    ),
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
          children: const [
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
          leading: const Icon(Icons.home),
          title: TextBurgerMenu(
            text: 'Hauptmenü',
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, HomeScreen.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports_soccer),
          title: TextBurgerMenu(
            text: 'Fußballverein',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: TextBurgerMenu(
            text: '1. Mannschaft',
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, FirstSquadScreen.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: TextBurgerMenu(
            text: '2. Mannschaft',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Kreisliga A2 Schwarzwald',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Kreisliga B2 Schwarzwald',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Trainingsbeteiligung',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Trainingsplanung',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Nominerungen',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Strafen',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Urlaub',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Strafenkatalog',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Vorbereitungsplan',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.sports),
          title: TextBurgerMenu(
            text: 'Abstreuplan',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.library_music),
          title: TextBurgerMenu(
            text: 'Mediathek',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.video_collection),
          title: TextBurgerMenu(
            text: 'Videothek',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.image),
          title: TextBurgerMenu(
            text: 'Galerie',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.contact_mail),
          title: TextBurgerMenu(
            text: 'Liedtexte',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.euro),
          title: TextBurgerMenu(
            text: 'Finanzen',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: TextBurgerMenu(
            text: 'Einstellungen',
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.contact_mail),
          title: TextBurgerMenu(
            text: 'Impressum',
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, ImprintScreen.id);
          },
        ),
        const Divider(
          color: Colors.black54,
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: TextBurgerMenu(
            text: 'Abmelden',
          ),
          onTap: () {
            Navigator.pop(context);
            AuthenticationService.signOut(context: context);
            Navigator.pushNamed(context, MainScreen.id);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Erfolgreich abgemeldet'),
              ),
            );
          },
        ),
      ]);
}
