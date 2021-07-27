import 'package:flutter/material.dart';
import 'package:spotifi/screens/Main/widgets/buttons/ButtonNavigateHomePage.dart';
import 'package:spotifi/screens/Startup/widgets/ButtonNavigateRegisterview.dart';
import 'package:spotifi/screens/Startup/widgets/ButtonNavigateSigninview.dart';

class MainStartupPage extends StatelessWidget {
  const MainStartupPage({Key? key}) : super(key: key);

  static const String MainStartupPage_title = 'Welcome to Spotifi';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MainStartupPage_title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            MainStartupPage_title,
          ),
        ),
        body: Container(
          child: Column(
            children: [
              ButtonNavigationRegisterview(),
              ButtonNavigationSigninView(),
              ButtonNavigateHomePage(),
            ],
          ),
        ),
      ),
    );
  }
}
