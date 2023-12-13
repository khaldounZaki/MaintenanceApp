import 'package:flutter/material.dart';
import 'package:theapp/widgets/myTextFormField.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 5,
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
              SizedBox(
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: const MyTextFormField(
                  theLabel: "Company Name",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: const MyTextFormField(
                  theLabel: "Phone Number",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: const MyTextFormField(
                  theLabel: "Email",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 100) * 75,
                child: const MyTextFormField(
                  theLabel: "Password",
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
            ],
          )),
          const Center(
            child: Text(
              "Dana Kitchen Application ....\nComming soon......",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
