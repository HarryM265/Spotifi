import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/forms/SigninCustomForm.dart';

class SigninPage extends StatelessWidget {
  SigninPage({Key? key}) : super(key: key);

  static const String SigninPage_title = 'Sign in Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: SigninPage_title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            SigninPage_title,
          ),
        ),
        body: Container(
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
