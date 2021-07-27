import 'package:flutter/material.dart';
import 'package:spotifi/screens/Main/view/HomePageListview.dart';
import 'package:spotifi/screens/Main/widgets/TopMenuWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TopMenuWidget(),
          HomePageListview(),
        ],
      ),
    );
  }
}
