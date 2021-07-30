import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/ButtonSubmitRegisterDetails.dart';

class RegisterPageThree extends StatelessWidget {
  const RegisterPageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[800],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon.png'),
                  ),
                ),
              ),
              Text('Thankyou for joining Spotifi!'),
              ButtonSubmitRegisterDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
