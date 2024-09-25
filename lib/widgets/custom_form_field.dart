import 'package:flutter/material.dart';
import 'package:flutter_app/utils/form_validation.dart';

class CustomFormField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? validatorMessage;

  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  const CustomFormField(
      {super.key,
      required this.labelText,
      this.validatorMessage,
      required this.obscureText,
      required this.enableSuggestions,
      required this.autocorrect,
      required this.hintText});

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  String get labelText => widget.labelText;
  String get hintText => widget.hintText;
  String? get validatorMessage => widget.validatorMessage;

  bool get obscureText => widget.obscureText;
  bool get enableSuggestions => widget.enableSuggestions;
  bool get autocorrect => widget.autocorrect;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
      width: 400,
      child: TextFormField(
        obscureText: obscureText,
        enableSuggestions: enableSuggestions,
        autocorrect: autocorrect,
        validator: (value) {
          return formFieldValidation(value, validatorMessage!);
        },
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 190, 190, 190)),
          labelText: labelText,
          hintText: hintText,
          helperText: ' ',
        ),
      ),
    )
  );
  }
}
