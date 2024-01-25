import 'package:flutter/material.dart';
import 'package:theapp/widgets/my_text_form_field.dart';
import 'package:theapp/pages/forgotPassword/forgot_password_page1.dart';
import 'package:theapp/pages/registration.dart';
import 'package:provider/provider.dart';
import 'package:theapp/services/auth_services.dart';
import 'package:theapp/services/other_services.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  bool _inprogress = false;
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthenticationService>(context);
    late String email;
    late String password;

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
                key: _formKey,
                autovalidateMode: _autoValidate,
                child: Column(
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 4) * 3,
                      child: MyTextFormField(
                        theLabel: "Email",
                        onSubmit: (value) {
                          email = value;
                          print(email);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 100) * 75,
                      child: MyTextFormField(
                        theLabel: "Password",
                        isPassWord: true,
                        onSubmit: (value) {
                          password = value;
                          print(password);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => const ForgotPassWord1(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            _inprogress = true;
                          });
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState?.save();

                            try {
                              await auth.signIn(email, password);
                            } catch (e) {
                              if (!context.mounted) return;
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(
                              //       content: Text(
                              //     "The email address or password is not correct. ",
                              //   )),
                              // );
                              showErrorMessage(context,
                                  "The email address or password is not correct.");
                              setState(() {
                                _inprogress = false;
                              });
                            }
                          } else {
                            setState(() {
                              _inprogress = false;
                              _autoValidate =
                                  AutovalidateMode.onUserInteraction;
                            });
                          }

                          //auth.signIn();
                        },
                        child: _inprogress
                            ? const Center(child: CircularProgressIndicator())
                            : const Text(
                                "Sign In",
                                style: TextStyle(fontSize: 18),
                              ),
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet? ",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => const RegistrationPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              Flexible(
                flex: 3,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
