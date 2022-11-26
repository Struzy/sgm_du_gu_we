import 'package:flutter/material.dart';
import 'constants.dart';

class TextSubtitle extends StatelessWidget {
  const TextSubtitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: kSourceSansPro,
        fontSize: kFontsizeSubtitle,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: kPacifico,
        fontSize: kFontsizeTitle,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TextInButton extends StatelessWidget {
  const TextInButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: kSourceSansPro,
        fontSize: kFontsizeButton,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
