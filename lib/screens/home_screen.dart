import 'package:flutter/material.dart';
import 'package:sgm_du_gu_we/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Hauptmenü'),
      ),
      body: Center(
        child: Text('Hauptmenü'),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

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
        color: Colors.blue.shade700,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
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
          title: const Text('Hauptmenü'),
          onTap: () {
            Navigator.pushNamed(context, '/');
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.image),
          title: const Text('Galerie'),
          onTap: () {
            // TODO
            Navigator.pop(context);
          },
        ),
        const Divider(
          color: Colors.black54,
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: () {
            // TODO
            Navigator.pop(context);
          },
        ),
      ]);
}
