import 'package:flutter/material.dart';

class TopMenuWidget extends StatelessWidget {
  const TopMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Premium'),
          Icon(Icons.notifications),
          Icon(Icons.cast),
        ],
      ),
    );
  }
}
