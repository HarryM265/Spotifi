import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/ButtonSubmitRegisterDetails.dart';

class RegisterPageThree extends StatelessWidget {
  const RegisterPageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Thankyou for joining Spotifi!'),
            ButtonSubmitRegisterDetails(),
          ],
        ),
      ),
    );
  }
}
