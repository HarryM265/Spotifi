import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/ButtonNavigateRegisterview.dart';
import 'package:spotifi/screens/Startup/widgets/ButtonNavigateSigninview.dart';

class MainStartupPage extends StatelessWidget {
  const MainStartupPage({Key? key}) : super(key: key);

  static const String MainStartupPage_title = 'Welcome to Spotifi';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MainStartupPage_title,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[800],
        accentColor: Colors.purple[300],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          title: const Text(
            MainStartupPage_title,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon.png'),
                  ),
                ),
              ),
              Row(
                children: [
                  ButtonNavigationRegisterview(),
                  Container(width: MediaQuery.of(context).size.width * 0.1),
                  ButtonNavigationSigninView(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
