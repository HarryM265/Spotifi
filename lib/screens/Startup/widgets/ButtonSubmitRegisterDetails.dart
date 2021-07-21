import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/view/SigninPage.dart';

class ButtonSubmitRegisterDetails extends StatelessWidget {
  const ButtonSubmitRegisterDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Submition Complete!'),
                ),
              );
            },
            child: Text('Submit Account Details'),
          ),
        ],
      ),
    );
  }
}
