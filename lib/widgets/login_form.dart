import 'package:flutter/material.dart';
import 'custom_form_field.dart';
import 'custom_elevated_button.dart';

class LoginForm extends StatefulWidget{
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const CustomFormField(
            labelText: "Enter your username",
            validatorMessage: "Please enter your username",
            obscureText: false,
            enableSuggestions: true,
            autocorrect: true,
          ),
          const CustomFormField(
            labelText: "Enter your password",
            validatorMessage: "Please enter your password",
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
          ),
          CustomElevatedButton(
            formKey: _formKey,
            buttonText: "Submit",
            foregroundColor: Colors.blue, 
          ),
        ],
      ),
    );
  }
}