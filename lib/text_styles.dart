import 'package:flutter/material.dart';
import 'constants.dart';

class TextSubtitle extends StatelessWidget {
  TextSubtitle({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: kSourceSansPro,
        fontSize: kFontsizeSubtitle,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  TextTitle({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: kPacifico,
        fontSize: kFontsizeTitle,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TextInButton extends StatelessWidget {
  TextInButton({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: kSourceSansPro,
        fontSize: kFontsizeButton,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TextBurgerMenu extends StatelessWidget {
  TextBurgerMenu({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: kPacifico,
        fontSize: kFontsizeBurgerMenu,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
