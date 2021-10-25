import 'dart:async';

import 'package:easybuy/components/button.dart';
import 'package:easybuy/components/button_dark.dart';
import 'package:easybuy/components/custom_textformfield.dart';
import 'package:easybuy/constants/helperFunctions.dart';
import 'package:easybuy/model/user.dart';
import 'package:easybuy/screens/home/home.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final GlobalKey<FormState> formKeySignIn = GlobalKey<FormState>();

  bool getEmail = true;
  bool hidePassword = true;
  UserModel userData = UserModel(email: '', password: '');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      key: formKeySignIn,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: size.height * 0.05,
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
          Positioned(
            top: size.height * 0.18,
            child: SizedBox(
              width: size.width * 0.85,
              child: CustomTextFieldForm(
                obscureText: hidePassword,
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
                hintText: "Password (8 or more  Alphanumeric characters)",
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.26,
            left: size.width * 0.63,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (mounted) {
                    hidePassword = !hidePassword;
                  }
                });
              },
              child: Text(
                'Show Password',
                style: EasyBuyTheme.showPasswordText,
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
                  style: Theme.of(context).textTheme.bodyText1,
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
            child: CustomButtonDark(
              buttonText: "Sign In",
              onPress: () {
                if (formKeySignIn.currentState!.validate()) {}
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    actionsPadding: EdgeInsets.only(
                        top: EasyBuyTheme.paddingXL,
                        bottom: EasyBuyTheme.paddingXL),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    actionsAlignment: MainAxisAlignment.spaceEvenly,
                    actions: [
                      CircularProgressIndicator(
                        color: Theme.of(context).primaryColorDark,
                      ),
                      Text(
                        "Signing In",
                        style: Theme.of(context).textTheme.button,
                      )
                    ],
                  ),
                );
                Timer(
                  const Duration(milliseconds: 1000),
                  () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                );
              },
              btnColor: Theme.of(context).primaryColorDark,
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
