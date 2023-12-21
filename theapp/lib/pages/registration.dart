import 'package:flutter/material.dart';
import 'package:theapp/widgets/my_text_form_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
                flex: 4,
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
                        isPhone: true,
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: acceptTerms,
                          onChanged: (value) {
                            setState(() {
                              acceptTerms = !acceptTerms;
                            });
                          },
                        ),
                        Row(
                          children: [
                            Text(
                              "I Agree To The ",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Terms And Condition",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    decoration: TextDecoration.underline),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Register",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // const Center(
              //   child: Text(
              //     "Dana Kitchen Application ....\nComming soon......",
              //     style: TextStyle(color: Colors.white),
              //   ),
              // ),
              Flexible(
                flex: 5,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
