import 'package:flutter/material.dart';
import 'package:spotifi/screens/Main/view/HomePageListview.dart';
import 'package:spotifi/screens/Main/view/PlaylistPageScrollview.dart';

import 'HomePage.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[800],
        accentColor: Colors.purple[300],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Scaffold(
        body: DefaultTabController(
          length: 4,
          child: CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              title: Text('Spotifii'),
              backgroundColor: Colors.purple[300],
              pinned: true,
              floating: false,
              snap: false,
              flexibleSpace: FlexibleSpaceBar(),
            ),
            SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
              TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home_filled)),
                  Tab(icon: Icon(Icons.library_music_rounded)),
                  Tab(icon: Icon(Icons.account_circle)),
                  Tab(icon: Icon(Icons.menu_rounded)),
                ],
              ),
            )),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  HomePage(), // Should be HomePage (attempting to make top menu)
                  PlaylistPageScrollview(),
                  Icon(Icons.account_circle),
                  Icon(Icons.menu_rounded),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
