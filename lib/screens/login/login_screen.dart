import 'package:flutter/material.dart';
import '../../widgets/custom_form_field.dart';
import '../../widgets/custom_elevated_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 30),
          const CustomFormField(
            labelText: "Username",
            hintText: "Enter your username",
            validatorMessage: "Please enter your username",
            obscureText: false,
            enableSuggestions: true,
            autocorrect: true,
          ),
          const SizedBox(height: 40),
          const CustomFormField(
            labelText: "Password",
            hintText: "Enter your password",
            validatorMessage: "Please enter your password",
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
          ),
          const SizedBox(height: 20),
          CustomElevatedButton(
            formKey: _formKey,
            buttonText: "Submit",
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromARGB(255, 241, 236, 248),
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: LoginForm(),
      ),
    );
  }
}
