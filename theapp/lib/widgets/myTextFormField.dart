import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key, required this.theLabel, this.isPassWord = false});
  final String theLabel;
  final bool isPassWord;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: isPassWord
            ? IconButton(
                onPressed: () {}, icon: const Icon(Icons.remove_red_eye))
            : null,
        label: Text(
          theLabel,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
      ),
      style: TextStyle(color: Theme.of(context).primaryColor),
    );
  }
}
