import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/navigation_drawer.dart' as nav;

class SecondSquadScreen extends StatefulWidget {
  const SecondSquadScreen({super.key});

  static const String id = 'second_squad_screen';

  @override
  SecondSquadScreenState createState() => SecondSquadScreenState();
}

class SecondSquadScreenState extends State<SecondSquadScreen> {
  int progress = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const nav.NavigationDrawer(),
        appBar: AppBar(
          title: const Text('2. Mannschaft'),
        ),
        body: Column(
          children: [
            LinearProgressIndicator(
              value: progress / 100,
              backgroundColor: Colors.grey[200],
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            Expanded(
              child: WebView(
                initialUrl:
                    'https://www.fussball.de/mannschaft/sgm-durchhausen-gunningen-weigheim-ii-fc-vorwaerts-weigheim-wuerttemberg/-/saison/2223/team-id/011MIEHTGG000000VTVG0001VTR8C1K7#!/',
                javascriptMode: JavascriptMode.unrestricted,
                onProgress: (int newProgress) {
                  setState(() {
                    progress = newProgress;
                  });
                },
                onPageFinished: (String url) {
                  setState(() {
                    progress = 0;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
