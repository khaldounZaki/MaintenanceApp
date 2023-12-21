import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
    super.key,
    required this.theLabel,
    this.isPassWord = false,
    this.isPhone = false,
  });
  final String theLabel;
  final bool isPassWord;
  final bool isPhone;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool isob = false;
  @override
  void initState() {
    isob = widget.isPassWord ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isob,
      decoration: InputDecoration(
        suffixIcon: widget.isPassWord
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isob = !isob;
                  });
                },
                icon: isob
                    ? const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      )
                    : const Icon(Icons.remove_red_eye, color: Colors.white))
            : null,
        prefixText: widget.isPhone ? "+971-" : null,
        prefixStyle: TextStyle(color: Theme.of(context).primaryColor),
        label: Text(
          widget.theLabel,
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
