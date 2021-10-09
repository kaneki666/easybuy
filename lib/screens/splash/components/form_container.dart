import 'package:easybuy/screens/splash/components/signin_form.dart';
import 'package:easybuy/screens/splash/components/signup_form.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatefulWidget {
  const FormContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<FormContainer> createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  final formKeySignUp = GlobalKey<FormState>();
  bool getEmail = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.9,
      width: double.infinity,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                splashRadius: 1,
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close)),
            bottom: TabBar(
              indicatorColor: EasyBuyTheme.colorTeal,
              labelStyle: Theme.of(context).textTheme.headline3,
              tabs: const <Widget>[
                Tab(
                  text: "Sign In",
                ),
                Tab(
                  text: "Create Account",
                ),
              ],
            ),
            title: Text(
              'EASYBUY',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          body: const TabBarView(
            children: [
              SignInForm(),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
