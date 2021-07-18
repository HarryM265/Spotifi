import 'package:flutter/material.dart';

class ButtonSubmitSignInDetails extends StatelessWidget {
  ButtonSubmitSignInDetails({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Submition Complete!')));
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ));
  }
}
