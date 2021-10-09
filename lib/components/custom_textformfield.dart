import 'package:flutter/material.dart';

class CustomTextFieldForm extends StatelessWidget {
  const CustomTextFieldForm({
    Key? key,
    required this.hintText,
    required this.validator,
  }) : super(key: key);

  final String hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
        validator: validator,
      ),
    );
  }
}
