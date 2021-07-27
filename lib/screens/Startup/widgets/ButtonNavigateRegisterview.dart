import 'package:flutter/material.dart';
import 'package:spotifi/screens/Startup/view/RegisterScrollview.dart';

class ButtonNavigationRegisterview extends StatelessWidget {
  const ButtonNavigationRegisterview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      //width: 120,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
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
    );
  }
}
