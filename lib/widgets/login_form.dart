import 'package:flutter/material.dart';

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
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty){
                  return 'Please enter some text';
                }
                return null;
              },
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
          //TODO: Create a seperate widget for text form field and put login form on screens.
          TextFormField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (value) {
              if (value == null || value.isEmpty){
                  return 'Please enter some text';
                }
                return null;
              },
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your password',
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              foregroundColor: WidgetStatePropertyAll<Color>(Colors.blue)
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()){

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            }, 
            child: const Text('Submit'),
            ),
        ],
      ),
    );
  }
}