import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/ButtonNavigationMainStartupPage.dart';

class StartupBackButton extends StatelessWidget {
  const StartupBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ButtonNavigationMainStartupPage(),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
          ),
        ],
      ),
    );
  }
}
