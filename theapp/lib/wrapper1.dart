import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theapp/services/auth_services.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:theapp/wrapper2.dart';
import 'package:theapp/pages/sign_in.dart';

class Wrapper1 extends StatelessWidget {
  const Wrapper1({super.key});
  @override
  Widget build(BuildContext context) {
    AuthenticationService auth = AuthenticationService();
    return StreamBuilder(
      stream: auth.authenticatinStream,
      initialData: null,
      builder: (context, snapshot) {
        //User Signed In go to Wrapper2 to check if the email is verfied
        if (snapshot.hasData) {
          return Provider(
            create: (context) => auth,
            child: const Wrapper2(),
          );
        }
        //User not Signed In go to SigninPage()
        return Provider(
          create: (context) => auth,
          child: const SigninPage(),
        );
      },
    );
  }
}
