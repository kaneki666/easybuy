import 'package:flutter/material.dart';
import 'package:easybuy/components/button.dart';
import 'package:easybuy/screens/splash/components/form_container.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final splashScaffoldKey = GlobalKey<ScaffoldState>();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: splashScaffoldKey,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bgLight.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.07,
            child: Text(
              "EASYBUY",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Positioned(
            top: size.height * 0.75,
            child: CustomButton(
              btnColor: Theme.of(context).primaryColorLight,
              buttonText: "Sign In",
              onPress: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const FormContainer();
                  },
                );
              },
            ),
          ),
          Positioned(
            top: size.height * 0.83,
            child: CustomButton(
              btnColor: Theme.of(context).primaryColorLight,
              buttonText: "Create Account",
              onPress: () {
                splashScaffoldKey.currentState?.showBottomSheet<void>(
                  (BuildContext context) {
                    return const FormContainer();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
