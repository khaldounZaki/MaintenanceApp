import 'package:flutter/material.dart';
import 'package:theapp/widgets/my_text_form_field.dart';
import 'package:theapp/pages/forgotPassword/forgot_password_page2.dart';

// This Page Shoud Request The Email Adress From The User
// If Email is Already Registered a verfication code must be send
// verfication code must be updated on the user information
// a flag for password forgotten must be activate
// steps :
/// 1- search on firebase for the email
/// 2-1- if email founded generate a verfication code
/// 2-2- send the verfication code by email
/// 2-3- set user verfied flag to false
/// 2-4- set pass word forgotten to true
///
/// 3- if email not founded send error message to the user and don't proceed

class ForgotPassWord1 extends StatefulWidget {
  const ForgotPassWord1({super.key});

  @override
  State<ForgotPassWord1> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<ForgotPassWord1> {
  bool acceptTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 8,
                child: Container(),
              ),
              const Image(image: AssetImage("assets/images/danaLogo.png")),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      //padding: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.only(
                          top: 25, left: 9, right: 8, bottom: 15),
                      child: Text(
                        "Please enter your email to send verification code",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 4) * 3,
                      child: MyTextFormField(
                        theLabel: "Email",
                        onSubmit: (value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const VerificationForgotPassWord(),
                            ),
                          );
                        },
                        child: const Text(
                          "Send Code",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 9,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
