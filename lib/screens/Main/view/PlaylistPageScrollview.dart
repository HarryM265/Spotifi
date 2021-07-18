import 'package:flutter/material.dart';

class PlaylistPageScrollview extends StatelessWidget {
  const PlaylistPageScrollview({Key? key}) : super(key: key);

  static const String PlaylistPageScrollview_title = 'Home Page Scrollview';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: PlaylistPageScrollview_title,
      home: Scaffold(
        body: const PlaylistviewStatelessWidget(),
      ),
    );
  }
}

// Scrolling stateless widget
class PlaylistviewStatelessWidget extends StatelessWidget {
  const PlaylistviewStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: [
        Text('Item One'),
        Text('Item Two'),
        Text('Item Three'),
        Text('Item Four'),
      ],
    );
  }
}
