import 'package:flutter/material.dart';

String? emailValidator(String? value) {
  const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  final regex = RegExp(pattern);

  if (value == null || value.isEmpty) {
    return "Email Adress is Required";
  }
  if (!regex.hasMatch(value)) {
    return "Enter Valid Email Adress";
  }
  return null;
}

String? phoneNumberValidator(String? value) {
  //const pattern = r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/';
  const pattern = r'^[0-9]{9}$';
  RegExp regex = RegExp(pattern);

  if (value == null || value.isEmpty) {
    return "Phone Number is Required";
  }
  if (!regex.hasMatch(value)) {
    return 'Enter Valid Phone Number';
  }
  return null;
}

void showErrorMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(
      message,
    )),
  );
}
