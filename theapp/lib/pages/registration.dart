import 'package:flutter/material.dart';
import 'package:theapp/widgets/my_text_form_field.dart';
import 'package:theapp/pages/terms_and_condition.dart';
import 'package:provider/provider.dart';
import 'package:theapp/services/auth_services.dart';
import 'package:theapp/models/user.dart';
import 'package:theapp/services/other_services.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  bool _inprogress = false;
  bool acceptTerms = false;
  AppUser appUser = AppUser(
      companyName: "companyName",
      email: "email",
      password: "password",
      phone: "phone",
      role: "role");
  String passwordConf = "password";
  String password = "password";

  @override
  Widget build(BuildContext context) {
    //final auth = Provider.of<AuthenticationService>(context);
    // Company Name
    // Phone Number
    // Email
    // Password
    // Password Confirmation
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
                key: _formKey,
                autovalidateMode: _autoValidate,
                child: Column(
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 4) * 3,
                      child: MyTextFormField(
                        theLabel: "Company Name",
                        onSubmit: (value) {
                          appUser.companyName = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 4) * 3,
                      child: MyTextFormField(
                        theLabel: "Phone Number",
                        isPhone: true,
                        onSubmit: (value) {
                          appUser.phone = value;
                        },
                        validator: phoneNumberValidator,
                        textInputType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 4) * 3,
                      child: MyTextFormField(
                        theLabel: "Email",
                        onSubmit: (value) {
                          appUser.email = value;
                        },
                        validator: emailValidator,
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
                        onChanged: (value) {
                          password = value;
                        },
                        onSubmit: (value) {
                          appUser.password = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password is Required";
                          }
                          if (value.length < 6) {
                            return "At Least 6 Characters Required.";
                          }
                          if (password != passwordConf) {
                            return "Passwords do not match";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 100) * 75,
                      child: MyTextFormField(
                        theLabel: "Password Confirmation",
                        isPassWord: true,
                        onSubmit: (value) {
                          passwordConf = value;
                        },
                        validator: (value) {
                          if (password != passwordConf) {
                            return "Passwords do not match";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          passwordConf = value;
                        },
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) =>
                                        const TermsAndCondition(),
                                  ),
                                );
                              },
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
                        onPressed: () {
                          setState(() {
                            _inprogress = true;
                          });
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState?.save();
                            // bool readyForRegisteration = true;
                            // String errorMessage = "";

                            // if (!validateEmail(appUser.email)) {
                            //   readyForRegisteration = false;
                            //   errorMessage =
                            //       "$errorMessage\n- Email Adress is not a valid.";
                            // }
                            // showErrorMessage(context, errorMessage);

                            setState(() {
                              _inprogress = false;
                            });
                            //print(appUser.toString());
                          } else {
                            setState(() {
                              _inprogress = false;
                              _autoValidate =
                                  AutovalidateMode.onUserInteraction;
                            });
                          }
                        },
                        child: _inprogress
                            ? const Center(child: CircularProgressIndicator())
                            : const Text(
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
