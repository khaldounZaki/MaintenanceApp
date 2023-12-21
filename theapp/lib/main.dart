import 'package:flutter/material.dart';
import 'package:theapp/pages/registration.dart';
import 'package:theapp/pages/sign_in.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color.fromARGB(255, 27, 47, 68),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
              (states) => const Color.fromARGB(75, 255, 7, 234)),
        ),
        primaryColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => const Color.fromARGB(220, 255, 7, 234),
            ),
          ),
        )),
    home: const SigninPage(),
    debugShowCheckedModeBanner: false,
  ));
}
