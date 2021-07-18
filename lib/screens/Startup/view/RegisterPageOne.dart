import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/TopMenuWidget.dart';

class RegisterPageOne extends StatelessWidget {
  const RegisterPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TopMenuWidget(),
          Text('Page One'),
        ],
      ),
    );
  }
}
