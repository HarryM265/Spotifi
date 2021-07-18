import 'package:flutter/material.dart';

import 'RegisterPageOne.dart';
import 'RegisterPageThree.dart';
import 'RegisterPageTwo.dart';

class RegisterScrollview extends StatelessWidget {
  const RegisterScrollview({Key? key}) : super(key: key);

  static const String RegisterScrollview_title = 'Register Scrollview';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: RegisterScrollview_title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            RegisterScrollview_title,
          ),
        ),
        body: const RegisterViewStatelessWidget(),
      ),
    );
  }
}

// Scrolling stateless widget
class RegisterViewStatelessWidget extends StatelessWidget {
  const RegisterViewStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        RegisterPageOne(),
        RegisterPageTwo(),
        RegisterPageThree(),
      ],
    );
  }
}
