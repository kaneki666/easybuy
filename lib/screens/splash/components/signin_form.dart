import 'package:easybuy/components/button.dart';
import 'package:easybuy/components/custom_textformfield.dart';
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String theme = 'Dark';
    return Form(
      key: formKeySignIn,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: size.height * 0.05,
            child: CustomTextFieldForm(
              hintText: "Email",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Positioned(
            top: size.height * 0.18,
            child: SizedBox(
              width: size.width * 0.85,
              child: CustomTextFieldForm(
                hintText: "Password (8 or more  Alphanumeric characters)",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
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
              buttonText: "Sign In",
              onPress: () {},
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
