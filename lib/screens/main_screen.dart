import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: List,
      ),
      body: const Center(
        child: Image(
          image: AssetImage('images/SGM_Durchhausen_Gunningen.jpg'),
        ),
      ),
    );
  }
}
