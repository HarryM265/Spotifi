import 'package:flutter/material.dart';
//import 'package:spotifi/screens/Startup/widgets/StartupBackButton.dart';
import 'package:spotifi/screens/Startup/widgets/forms/RegisterPageOneForm.dart';

class RegisterPageOne extends StatelessWidget {
  const RegisterPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: Container(
        color: Colors.grey[800],
        padding: EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          controller: controller,
          children: [
            //StartupBackButton(),
            RegisterPageOneCustomForm(),
          ],
        ),
      ),
    );
  }
}
