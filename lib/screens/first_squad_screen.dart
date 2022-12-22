import 'package:flutter/material.dart';
import 'package:sgm_du_gu_we/constants.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

const String url = 'https://google.de';

class FirstSquadScreen extends StatefulWidget {
  static const String id = 'first_squad_screen';

  @override
  State<FirstSquadScreen> createState() => _FirstSquadScreenState();
}

class _FirstSquadScreenState extends State<FirstSquadScreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebView(
        initialUrl: 'https://flutter.dev',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

/*
* Column(
        children: [
          WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://www.amazon.com',
            onWebViewCreated: (controller) {
              this.controller = controller;
            },
          ),
        ],
      ),
* */

//import '../constants.dart';
//import 'package:http/http.dart' as http;
//import 'package:html/dom.dart' as dom;

/*class FirstSquadScreen extends StatefulWidget {
  static const String id = 'first_squad_screen';

  @override
  State<FirstSquadScreen> createState() => _FirstSquadScreenState();
}

class _FirstSquadScreenState extends State<FirstSquadScreen> {
  List<Player> players = [];

  @override
  void initState() {
    super.initState();

    getWebsiteData();
  }

  Future getWebsiteData() async {
    final url = Uri.parse(
        'https://www.fussball.de/mannschaft/sgm-durchhausen-gunningen-weigheim-sv-durchhausen-wuerttemberg/-/saison/2223/team-id/011MIEEOIG000000VTVG0001VTR8C1K7#!/');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);

    final playerNames = html
        .querySelectorAll('div.player-name > span')
        .map((element) => element.innerHtml.trim())
        .toList();

    print('Count: ${playerNames.length}');
    for (final playerName in playerNames) {
      debugPrint(playerName);
    }

    final playerImages = html
        .querySelectorAll('span > img')
        .map((element) => element.attributes['src']!)
        .toList();

    print('Count: ${playerImages.length}');
    for (final playerImage in playerImages) {
      debugPrint(playerImage);
    }

    setState(() {
      players = List.generate(
        playerNames.length,
            (index) => Player(name: playerNames[index], img: playerImages[index]),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: kSGMColorGreen,
      title: const Text('Kader 1. Mannschaft'),
      centerTitle: true,
    ),
    body: ListView.builder(
      padding: const EdgeInsets.all(
        20.0,
      ),
      itemCount: players.length,
      itemBuilder: (context, index) {
        final player = players[index];

        return ListTile(
          leading: Image.network(
            player.img,
            width: 50,
            fit: BoxFit.fitHeight,
          ),
          title: Text(
            player.name,
            style: const TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    ),
  );
}

class Player {
  final String name;
  final String img;

  const Player({required this.name, required this.img});
}*/
