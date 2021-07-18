import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/ButtonSubmitSignInDetails.dart';
import 'package:spotifi/screens/Startup/widgets/TopMenuWidget.dart';
import 'package:spotifi/screens/Startup/widgets/forms/SignInUserNameFormWidget.dart';

class SigninPage extends StatelessWidget {
  SigninPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

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
        body: Column(
          children: [
            Container(
              height: 100,
              child: TopMenuWidget(),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Username:'),
                  UsernameCustomForm(),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              child: Text('Password:'),
            ),
            /*Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Submition Complete!')));
                  }
                },
                child: Text('Submit'),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
