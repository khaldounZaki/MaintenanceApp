import 'package:flutter/material.dart';
import 'package:theapp/pages/registration.dart';
import 'package:theapp/pages/sign_in.dart';
import 'package:theapp/pages/forgotPassword/forgot_password_page2.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        textTheme: TextTheme(),
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color.fromARGB(255, 27, 47, 68),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(200, 255, 7, 243)),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
              (states) => const Color.fromARGB(150, 255, 7, 234)),
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
