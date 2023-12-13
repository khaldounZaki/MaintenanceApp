import 'package:flutter/material.dart';
import 'package:theapp/pages/registration.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: const Color.fromARGB(255, 27, 47, 68),
      primaryColor: Colors.white,
    ),
    home: const RegistrationPage(),
    debugShowCheckedModeBanner: false,
  ));
}
