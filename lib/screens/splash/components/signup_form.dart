import 'dart:async';

import 'package:easybuy/components/button.dart';
import 'package:easybuy/components/custom_textformfield.dart';
import 'package:easybuy/constants/helperFunctions.dart';
import 'package:easybuy/model/user.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> formKeySignUp = GlobalKey<FormState>();

  bool getEmail = true;
  bool hidePassword = true;
  UserModel userData = UserModel(email: '', password: '', confirm: '');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      key: formKeySignUp,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: size.height * 0.03,
            child: SizedBox(
              width: size.width * 0.85,
              child: CustomTextFieldForm(
                hintText: "Email",
                onChanged: (e) {
                  setState(() {
                    if (mounted) {
                      userData.email = e;
                    }
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  } else if (Validation().isValidEmail(value)) {
                    return null;
                  } else {
                    return "Invalid Email";
                  }
                },
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.13,
            child: SizedBox(
              width: size.width * 0.85,
              child: CustomTextFieldForm(
                hintText: "Password (8 or more  Alphanumeric characters)",
                onChanged: (e) {
                  setState(() {
                    if (mounted) {
                      userData.password = e;
                    }
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  } else if (Validation().isValidPassword(value)) {
                    return null;
                  } else {
                    return "Password should be Alphanumeric";
                  }
                },
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.23,
            child: SizedBox(
              width: size.width * 0.85,
              child: CustomTextFieldForm(
                hintText: "Confirm",
                onChanged: (e) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  } else if (value != userData.password) {
                    return "Doesn't match";
                  }
                  return null;
                },
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.35,
            left: size.width * 0.5,
            child: Row(
              children: [
                Text(
                  "Sign Up for emails",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Switch(
                  onChanged: (e) {
                    if (mounted) {
                      setState(() {
                        getEmail = e;
                      });
                    }
                  },
                  value: getEmail,
                  activeColor: Colors.white,
                  activeTrackColor: EasyBuyTheme.colorTeal,
                  inactiveThumbColor: Colors.redAccent,
                  inactiveTrackColor: Colors.orange,
                )
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.45,
            child: CustomButton(
              buttonText: "Create Account",
              onPress: () {
                if (formKeySignUp.currentState!.validate()) {}
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    actionsPadding: EdgeInsets.only(
                        top: EasyBuyTheme.paddingXL,
                        bottom: EasyBuyTheme.paddingXL),
                    backgroundColor: Theme.of(context).primaryColorLight,
                    actionsAlignment: MainAxisAlignment.spaceEvenly,
                    actions: [
                      CircularProgressIndicator(
                        color: Theme.of(context).primaryColorDark,
                      ),
                      const Text("Signing In")
                    ],
                  ),
                );
                Timer(const Duration(milliseconds: 1000), () {
                  Navigator.of(context).pop();
                });
              },
              btnColor: Theme.of(context).primaryColorLight,
            ),
          ),
          Positioned(
            top: size.height * 0.55,
            child: SizedBox(
              height: 10,
              width: size.width * 0.85,
              child: const Divider(),
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            child: SizedBox(
              width: size.width * 0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/google.png',
                    height: 40,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    'assets/icons/facebook.png',
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
