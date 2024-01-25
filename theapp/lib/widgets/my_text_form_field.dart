import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
    super.key,
    required this.theLabel,
    this.isPassWord = false,
    this.isPhone = false,
    required this.onSubmit,
    this.emptyMessage,
    this.validator,
    this.textInputType,
    this.onChanged,
  });
  final String theLabel;
  final bool isPassWord;
  final bool isPhone;
  final ValueChanged<String> onSubmit;
  final String? emptyMessage;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final void Function(String)? onChanged;

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
      keyboardType: widget.textInputType,
      obscureText: isob,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Color.fromARGB(255, 235, 179, 176)),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 247, 210, 208),
            width: 2,
          ),
        ),
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
      validator: widget.validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return widget.emptyMessage ?? "This Field is Required";
            }
            return null;
          },
      onSaved: (newValue) {
        if (newValue != null) {
          widget.onSubmit(newValue);
        }
      },
      onChanged: widget.onChanged,
    );
  }
}
