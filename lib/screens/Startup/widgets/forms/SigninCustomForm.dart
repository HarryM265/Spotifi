// Create a Form widget.
import 'package:flutter/material.dart';

class SigninCustomForm extends StatefulWidget {
  @override
  SigninCustomFormState createState() {
    return SigninCustomFormState();
  }
}

class SigninCustomFormState extends State<SigninCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Email:'),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Email';
              }
              return null;
            },
          ),
          Text('Password:'),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Password';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Submition Complete!'),
                    ),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
