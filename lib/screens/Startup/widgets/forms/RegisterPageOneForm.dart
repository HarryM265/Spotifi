// Create a Form widget.
import 'package:flutter/material.dart';

class RegisterPageOneCustomForm extends StatefulWidget {
  @override
  RegisterPageOneCustomFormState createState() {
    return RegisterPageOneCustomFormState();
  }
}

class RegisterPageOneCustomFormState extends State<RegisterPageOneCustomForm> {
  // ignore: non_constant_identifier_names
  final RegisterOne_formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: RegisterOne_formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
            cursorColor: Colors.black,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              } else if (!value.contains('@')) {
                return "Email must contain '@' sybmol";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email Again',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              } else if (!value.contains('@')) {
                return "Email must contain '@' sybmol";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              } else if (value.length < 8) {
                return 'Password should have atleast 8 characters';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password Again',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
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
                if (RegisterOne_formKey.currentState!.validate()) {
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
