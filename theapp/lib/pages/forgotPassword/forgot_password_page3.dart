import 'package:flutter/material.dart';
import 'package:theapp/widgets/my_text_form_field.dart';
import 'package:theapp/pages/sign_in.dart';

/// this page request the new password from the user
/// update it in the firebase
/// set password forgotten flag to false
/// set email verfied flag to true
/// forword the user to sign in page

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

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
                flex: 2,
                child: Container(),
              ),
              const Image(image: AssetImage("assets/images/danaLogo.png")),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Padding(
                //padding: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.only(
                    top: 25, left: 9, right: 8, bottom: 8),
                child: Text(
                  "Please enter the New Password",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 100) * 75,
                child: const MyTextFormField(
                  theLabel: "New Password",
                  isPassWord: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 100) * 75,
                child: const MyTextFormField(
                  theLabel: "Password Confirmation",
                  isPassWord: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    for (int i = 0; i < 3; i++) {
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    "Update",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
