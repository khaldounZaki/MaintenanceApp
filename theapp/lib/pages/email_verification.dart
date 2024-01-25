import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

/// This page should request the verfication code that has been send to the user
/// if he entered it correctly proceed to reset password page

class VerificationEmail extends StatelessWidget {
  const VerificationEmail({super.key});

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
                  "Please enter the Verification Code sent to your email",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              VerificationCode(
                onCompleted: (value) {},
                onEditing: (value) {},
                //fillColor: Theme.of(context).primaryColor,
                textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Verify",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Resend New Code",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      decoration: TextDecoration.underline),
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
