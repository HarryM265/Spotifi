import 'package:flutter/material.dart';

class PlaylistPageLayoutWidget extends StatelessWidget {
  const PlaylistPageLayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 50,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/TameImpalla.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
