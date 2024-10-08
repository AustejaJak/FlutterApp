import 'package:flutter/material.dart';
import 'package:flutter_app/utils/form_validation.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({super.key, required this.buttonText, required this.foregroundColor, required this.backgroundColor, required this.formKey});

  final String buttonText;

  final Color foregroundColor;
  final Color backgroundColor;

  final GlobalKey<FormState> formKey;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  GlobalKey<FormState> get formKey => widget.formKey;

  String get buttonText => widget.buttonText;

  Color get backgroundColor => widget.backgroundColor;
  Color get foregroundColor => widget.foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(foregroundColor),
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
          ),
      onPressed: () {
        allLoginFormFieldValidation(formKey, context, '/v1/home');
      },
      child: Text(buttonText),
    );
  }
}
