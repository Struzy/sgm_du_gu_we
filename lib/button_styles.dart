import 'package:flutter/material.dart';
import 'package:sgm_du_gu_we/text_styles.dart';
import 'constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.title, required this.destination});

  final String title;
  final String destination;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kEdgeInset,
      ),
      child: Material(
        color: kSGMColorGreen,
        borderRadius: BorderRadius.circular(kBorderRadius),
        elevation: kElevation,
        child: MaterialButton(
          onPressed: () => Navigator.pushNamed(context, destination),
          minWidth: kMinWidth,
          height: kHeight,
          child: TextInButton(
            text: title,
          ),
        ),
      ),
    );
  }
}
