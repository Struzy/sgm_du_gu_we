import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Image(
          image: AssetImage('images/SGM_Durchhausen_Gunningen.jpg'),
        ),
      ),
    );
  }
}
