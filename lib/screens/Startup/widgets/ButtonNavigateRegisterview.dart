import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/view/RegisterScrollview.dart';

class ButtonNavigationRegisterview extends StatelessWidget {
  const ButtonNavigationRegisterview({Key? key}) : super(key: key);

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
                    //adding navigation to PageTwo
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegisterScrollview();
                      },
                    ),
                  );
                },
                child: Text('Register'),
              ),
            ],
          ),
        ));
  }
}
