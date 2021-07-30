import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/forms/SigninCustomForm.dart';

class SigninPage extends StatelessWidget {
  SigninPage({Key? key}) : super(key: key);

  static const String SigninPage_title = 'Sign in Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: SigninPage_title,
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
          //backgroundColor: Theme.of(context).accentColor,
          backgroundColor: Colors.purple[300],
          title: const Text(
            SigninPage_title,
          ),
        ),
        body: Container(
          //color: Theme.of(context).primaryColor,
          color: Colors.grey[800],
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SigninCustomForm(),
            ],
          ),
        ),
      ),
    );
  }
}
