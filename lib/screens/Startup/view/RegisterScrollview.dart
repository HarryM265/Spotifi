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
        body: RegisterViewStatelessWidget(),
      ),
    );
  }
}

// Scrolling stateless widget
class RegisterViewStatelessWidget extends StatefulWidget {
  RegisterViewStatelessWidget({Key? key}) : super(key: key);

  @override
  _RegisterViewStatelessWidgetState createState() =>
      _RegisterViewStatelessWidgetState();
}

class _RegisterViewStatelessWidgetState
    extends State<RegisterViewStatelessWidget> {
  bool buttonVisible = true;

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Container(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [
                  RegisterPageOne(),
                  RegisterPageTwo(),
                  RegisterPageThree(),
                ],
              ),
            ),
            Visibility(
              visible: buttonVisible,
              child: ElevatedButton(
                onPressed: () {
                  print(controller.page);
                  if (controller.page! == 0.00) {
                    controller.nextPage(
                        duration: Duration(seconds: 1), curve: Curves.ease);
                  } else if (controller.page! == 1.00) {
                    controller.nextPage(
                        duration: Duration(seconds: 1), curve: Curves.ease);
                    setState(
                      () {
                        buttonVisible = !buttonVisible;
                      },
                    );
                  } else {
                    print('Timing Error');
                  }
                },
                child: Text('Next Page'),
              ),
            )
          ],
        ));
  }
}
