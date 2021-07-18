import 'package:flutter/material.dart';
import 'package:spotifi/screens/Main/view/HomePage.dart';

class ButtonNavigateHomePage extends StatelessWidget {
  const ButtonNavigateHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    //adding navigation to HomePage
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: Text('Home'),
              ),
            ],
          ),
        ));
  }
}
