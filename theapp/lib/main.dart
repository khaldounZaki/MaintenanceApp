import 'package:flutter/material.dart';
//import 'package:theapp/pages/sign_in.dart';
import 'package:theapp/wrapper1.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:theapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp myApp = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // print(myApp.toString());

  // final FirebaseAuth auth = FirebaseAuth.instance;

  // print(auth.currentUser);
  // auth.signInWithEmailAndPassword(
  //   email: "Khaldounzaki.uae@gmail.com",
  //   password: "235242",
  // );
  // print(auth.currentUser?.uid.toString());

  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
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
      home: const Wrapper1(),
      //home: const VerificationEmail(),
      //home: const MainAppPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
