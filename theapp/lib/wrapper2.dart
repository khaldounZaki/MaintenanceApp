import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theapp/services/auth_services.dart';

class Wrapper2 extends StatelessWidget {
  const Wrapper2({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthenticationService>(context);
    return Scaffold(
      body: Center(
        child: Center(
          child: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              auth.signOut();
            },
          ),
        ),
      ),
    );
  }
}
