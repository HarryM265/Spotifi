import 'package:flutter/material.dart';
import 'package:spotifi/screens/Main/view/HomePageListview.dart';
import 'package:spotifi/screens/Main/widgets/TopMenuWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Container(
      padding: EdgeInsets.all(15),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Featured',
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    SingleChildScrollView(
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 20.0, color: Colors.pink)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
