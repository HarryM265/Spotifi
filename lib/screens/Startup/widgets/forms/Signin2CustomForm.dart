/*import 'package:flutter/material.dart';

class Signin2CustomForm extends StatefulWidget {
  final String title;

  @override
  _Signin2CustomFormState createState() => _Signin2CustomFormState();
}

class _Signin2CustomFormState extends State<Signin2CustomForm> {
  final _signin2FormKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Form(
      key: _signin2FormKey,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                key: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              TextFormField(
                key: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
