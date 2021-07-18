import 'package:flutter/material.dart';

class HomePageListview extends StatelessWidget {
  const HomePageListview({Key? key}) : super(key: key);

  static const String HomePageListview_title = 'Home Page Scrollview';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: HomePageListview_title,
      home: Scaffold(
        body: const HomeViewStatelessWidget(),
      ),
    );
  }
}

// Scrolling stateless widget
class HomeViewStatelessWidget extends StatelessWidget {
  const HomeViewStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return ListView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: [
        Container(
          height: 300,
          child: Text('Item One'),
        ),
        Container(
          height: 300,
          child: Text('Item Two'),
        ),
        Container(
          height: 300,
          child: Text('Item Three'),
        ),
        Container(
          height: 300,
          child: Text('Item Four'),
        ),
      ],
    );
  }
}
