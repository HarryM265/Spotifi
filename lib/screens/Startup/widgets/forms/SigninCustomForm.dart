// Create a Form widget.
import 'package:flutter/material.dart';

class SigninCustomForm extends StatefulWidget {
  @override
  SigninCustomFormState createState() {
    return SigninCustomFormState();
  }
}

class SigninCustomFormState extends State<SigninCustomForm> {
  // ignore: non_constant_identifier_names
  final Signin_formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: Signin_formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Email';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Password is required';
              } else if (value.length < 8) {
                return 'Password should have atleast 8 characters';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                if (Signin_formKey.currentState!.validate()) {
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
