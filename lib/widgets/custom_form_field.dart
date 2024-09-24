import 'package:flutter/material.dart';
import 'package:flutter_app/utils/form_validation.dart';

class CustomFormField extends StatefulWidget {
  final String labelText;
  final String? validatorMessage;

  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  const CustomFormField({super.key, required this.labelText, this.validatorMessage, required this.obscureText, required this.enableSuggestions, required this.autocorrect});

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  String get labelText => widget.labelText;
  String? get validatorMessage => widget.validatorMessage;

  bool get obscureText => widget.obscureText;
  bool get enableSuggestions => widget.enableSuggestions;
  bool get autocorrect => widget.autocorrect;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,
      validator: (value) {
        return formValidation(value, validatorMessage!);
      },
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
