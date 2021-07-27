import 'package:flutter/material.dart';
import 'package:spotifi/screens/Main/view/TabBarWidget.dart';

class ButtonSubmitRegisterDetails extends StatelessWidget {
  const ButtonSubmitRegisterDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                //adding navigation to Main Startup Page
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TabBarWidget();
                  },
                ),
              );
            },
            child: Text('Continue to Home Page'),
          ),
        ],
      ),
    );
  }
}
