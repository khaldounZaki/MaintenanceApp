import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terms And Conditions"),
      ),
      body: Padding(
        //padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.only(top: 25, left: 9, right: 8, bottom: 8),
        child: Text(
          "I Agree To The",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
