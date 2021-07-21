import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/widgets/forms/RegisterPageTwoForm.dart';

class RegisterPageTwo extends StatelessWidget {
  const RegisterPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          RegisterPageTwoCustomForm(),
        ],
      ),
    );
  }
}
