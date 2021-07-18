import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/view/MainStartupPage.dart';

void main() {
  runApp(Spotifi());
}

class Spotifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotifi Startup',
      home: MainStartupPage(),
    );
  }
}
