import 'package:flutter/material.dart';
import 'package:spotifi/screens/Main/view/HomePageListview.dart';
import 'package:spotifi/screens/Main/view/PlaylistPageScrollview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_filled)),
                Tab(icon: Icon(Icons.library_music_rounded)),
                Tab(icon: Icon(Icons.account_circle)),
                Tab(icon: Icon(Icons.menu_rounded)),
              ],
            ),
            title: Text('Welcome Home'),
          ),
          body: TabBarView(
            children: [
              HomePageListview(), // will eventually be each page
              PlaylistPageScrollview(),
              Icon(Icons.account_circle),
              Icon(Icons.menu_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
