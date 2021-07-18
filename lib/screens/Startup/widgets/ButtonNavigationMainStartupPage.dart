import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/view/MainStartupPage.dart';

class ButtonNavigationMainStartupPage extends StatelessWidget {
  const ButtonNavigationMainStartupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                //adding navigation to Main Startup Page
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MainStartupPage();
                  },
                ),
              );
            },
            child: Text('Back'),
          ),
        ],
      ),
    ));
  }
}
