// Create a Form widget.
import 'package:flutter/material.dart';

class RegisterPageTwoCustomForm extends StatefulWidget {
  @override
  RegisterPageTwoCustomFormState createState() {
    return RegisterPageTwoCustomFormState();
  }
}

class RegisterPageTwoCustomFormState extends State<RegisterPageTwoCustomForm> {
  final RegisterTwo_formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: RegisterTwo_formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Username:'),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Username';
              }
              return null;
            },
          ),
          Text('Date of Birth:'),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter DOB';
              }
              return null;
            },
          ),
          Text('First Name:'),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Name';
              }
              return null;
            },
          ),
          Text('Last Name:'),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Name';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                if (RegisterTwo_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Storing Data'),
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
