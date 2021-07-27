import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/view/SigninPage.dart';

class ButtonNavigationSigninView extends StatelessWidget {
  const ButtonNavigationSigninView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      //width: 120,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            //adding navigation to Sign in Page
            context,
            MaterialPageRoute(
              builder: (context) {
                return SigninPage();
              },
            ),
          );
        },
        child: Text('Sign in'),
      ),
    );
  }
}
