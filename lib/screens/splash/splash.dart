import 'package:easybuy/components/button.dart';
import 'package:easybuy/screens/splash/components/form_container.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

const String kArtwork = "Left";
const String kPastJobs = "Right";
const EdgeInsets kPaddingTabBar = EdgeInsets.all(5.0);
const Color kLightGrey = Colors.grey;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final splashScaffoldKey = GlobalKey<ScaffoldState>();
    Size size = MediaQuery.of(context).size;

    String theme = 'Light';
    return Scaffold(
      backgroundColor: Colors.red,
      key: splashScaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FormContainer(),
            // Text(
            //   "EASYBUY",
            //   style: Theme.of(context).textTheme.headline1,
            // ),
            // SizedBox(
            //   height: size.height * 0.5,
            // ),
            // CustomButton(
            //   buttonText: "Sign In",
            //   onPress: () {
            //     splashScaffoldKey.currentState?.showBottomSheet<void>(
            //       (BuildContext context) {
            //         return const FormContainer();
            //       },
            //     );
            //   },
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // CustomButton(
            //   buttonText: "Create Account",
            //   onPress: () {
            //     splashScaffoldKey.currentState?.showBottomSheet<void>(
            //       (BuildContext context) {
            //         return const FormContainer();
            //       },
            //     );
            //   },
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // const Divider(),
          ],
        ),
      ),
    );
  }
}
