// Create a Form widget.
import 'package:flutter/material.dart';

class RegisterPageTwoCustomForm extends StatefulWidget {
  @override
  RegisterPageTwoCustomFormState createState() {
    return RegisterPageTwoCustomFormState();
  }
}

class RegisterPageTwoCustomFormState extends State<RegisterPageTwoCustomForm> {
  // ignore: non_constant_identifier_names
  final RegisterTwo_formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: RegisterTwo_formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Username',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Username';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Date of Birth 'DD/MM/YYYY'",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter DOB';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'First Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Last Name',
            ),
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
