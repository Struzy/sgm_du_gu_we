import 'package:flutter/material.dart';
import '../constants.dart';

class ImprintScreen extends StatelessWidget {
  static const String id = 'imprint_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSGMColorGreen,
        title: const Text('Impressum'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 20.0,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Entwickler der Applikation',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Manuel Struzyna',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Verein',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Sportvereinigung Durchhausen e.V.',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Sitz',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    '78591 Durchhausen (Kreis Tuttlingen)',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Vereinsregister',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'eingetragen im Vereinsregister am Amtsgericht Stuttgart (VR 460384), vormals Amtsgericht Spaichingen (VR 332)',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Anschrift',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Dorfstra??e 78, 78591 Durchhausen',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Telefon',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    '07464/4015',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'E-Mail-Adresse',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'info@sv-durchhausen.de',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Vorstand im Sinne des ??26 BGB',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Harald Bury\nOliver Utz\nThomas Merz',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Steuer-Nummer',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    '21105/032526',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Umsatzsteuer-Identnummer',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'DE142941554',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'V.i.S.d. TMG',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Harald Bury\nDorfstra??e 78\n78591 Durchhausen\nTel. 07464/4015\nE-Mail: bury@tixit.de',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Datenschutzbeauftragter',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Daniel Dreher\nAschenreutestra??e 8\n78591 Durchhausen\nTel. 07464/575\nE-Mail: dd@sv-durchhausen.de',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Datenschutzerkl??rung',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Wir erheben, verwenden und speichern Ihre personenbezogenen Daten ausschlie??lich im Rahmen der Bestimmungen des Bundesdatenschutzgesetzes der Bundesrepublik Deutschland. Nachfolgend unterrichten wir Sie ??ber Art, Umfang und Zweck der Datenerhebung und Verwendung.',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Erhebung und Verarbeitung von Daten',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Jeder Zugriff auf unsere Internetseite und jeder Abruf einer auf dieser Website hinterlegten Datei werden protokolliert. Die Speicherung dient internen systembezogenen und statistischen Zwecken. Protokolliert werden: Name der abgerufenen Datei, Datum und Uhrzeit des Abrufs, ??bertragene Datenmenge, Meldung ??ber erfolgreichen Abruf, Webbrowser und anfragende Domain. Zus??tzlich werden die IP Adressen der anfragenden Rechner protokolliert. Weitergehende personenbezogene Daten werden nur erfasst, wenn der Nutzer der Website und/oder Kunde Angaben freiwillig, etwa im Rahmen einer Anfrage oder Registrierung oder zum Abschluss eines Vertrages oder ??ber die Einstellungen seines Browsers t??tigt.\nUnsere Internetseite verwendet Cookies. Ein Cookie ist eine Textdatei, die beim Besuch einer Internetseite verschickt und auf der Festplatte des Nutzer der Website und/oder Kunden zwischengespeichert wird. Wird der entsprechende Server unserer Webseite erneut vom Nutzer der Website und/oder Kunden aufgerufen, sendet der Browser des Nutzers der Website und/oder des Kunden den zuvor empfangenen Cookie wieder zur??ck an den Server. Der Server kann dann die durch diese Prozedur erhaltenen Informationen auf verschiedene Arten auswerten. Durch Cookies k??nnen z. B. Werbeeinblendungen gesteuert oder das Navigieren auf einer Internetseite erleichtert werden. Wenn der Nutzer der Website und/oder Kunde die Nutzung von Cookies unterbinden will, kann er dies durch lokale Vornahme der ??nderungen seiner Einstellungen in dem auf seinem Computer verwendeten Internetbrowser, also dem Programm zum ??ffnen und Anzeigen von Internetseiten (z.B. Internet Explorer, Mozilla Firefox, Opera oder Safari) tun.',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Nutzung und Weitergabe personenbezogener Daten',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Soweit der Nutzer unserer Webseite personenbezogene Daten zur Verf??gung gestellt hat, verwenden wir diese nur zur Beantwortung von Anfragen des Nutzers der Website und/oder Kunden, zur Abwicklung mit dem Nutzer der Website und/oder Kunden geschlossener Vertr??ge und f??r die technische Administration. Personenbezogene Daten werden von uns an Dritte nur weitergegeben oder sonst ??bermittelt, wenn dies zum Zwecke der Vertragsabwicklung oder zu Abrechnungszwecken erforderlich ist oder der Nutzer der Website und/oder Kunde zuvor eingewilligt hat. Der Nutzer der Website und/oder Kunde hat das Recht, eine erteilte Einwilligung mit Wirkung f??r die Zukunft jederzeit zu widerrufen.\n\nDie L??schung der gespeicherten personenbezogenen Daten erfolgt, wenn der Nutzer der Website und/oder Kunde die Einwilligung zur Speicherung widerruft, wenn ihre Kenntnis zur Erf??llung des mit der Speicherung verfolgten Zwecks nicht mehr erforderlich ist oder wenn ihre Speicherung aus sonstigen gesetzlichen Gr??nden unzul??ssig ist. Daten f??r Abrechnungszwecke und buchhalterische Zwecke werden von einem L??schungsverlangen nicht ber??hrt.',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: kFontsizeText,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Auskunftsrecht',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  'Auf schriftliche Anfrage informieren wir den Nutzer der Website und/oder den Kunden ??ber die zu seiner Person gespeicherten Daten. Die Anfrage ist an unsere im Impressum der Webseite angegebene Adresse zu richten.\n\n\nF??r weitere Fragen zum Datenschutz stehen wir Ihnen gerne unter E-Mail datenschutz@sv-durchhausen.de zur Verf??gung.',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: kFontsizeText,
                    color: Colors.black,
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
