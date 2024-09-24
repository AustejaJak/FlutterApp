import 'package:flutter/material.dart';

String? formFieldValidation(String? value, String errorMsg) {
  if (value == null || value.isEmpty) {
    return errorMsg;
  }
  return null;
}

void allLoginFormFieldValidation(GlobalKey<FormState> formKey, BuildContext context, String routeName) {
  if (formKey.currentState!.validate()) {
    Navigator.pushNamed(context, routeName);
  }
}

