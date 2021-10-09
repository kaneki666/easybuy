import 'package:flutter/material.dart';

class CustomTextFieldForm extends StatelessWidget {
  const CustomTextFieldForm({
    Key? key,
    this.obscureText = false,
    required this.hintText,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      child: TextFormField(
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: hintText,
        ),
        validator: validator,
      ),
    );
  }
}
