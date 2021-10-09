import 'package:easybuy/components/button.dart';
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
  final formKeySignIn = GlobalKey<FormState>();
  final formKeySignUp = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String theme = 'Light';
    return Container(
      height: size.height * 0.9,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(EasyBuyTheme.borderRadiusM)),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                splashRadius: 1,
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close)),
            bottom: TabBar(
              indicatorColor: theme == "Dark"
                  ? EasyBuyTheme.colorTeal
                  : EasyBuyTheme.colorTeal,
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
          body: TabBarView(
            children: [
              Form(
                key: formKeySignIn,
                child: Padding(
                  padding: EdgeInsets.all(EasyBuyTheme.paddingXL),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Email",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        decoration: const InputDecoration(
                          focusColor: Colors.grey,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      const SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Sign Up from emails",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Switch(
                            onChanged: (e) {},
                            value: true,
                            activeColor: Colors.white,
                            activeTrackColor: EasyBuyTheme.colorTeal,
                            inactiveThumbColor: Colors.redAccent,
                            inactiveTrackColor: Colors.orange,
                          )
                        ],
                      ),
                      const SizedBox(height: 100),
                      CustomButton(
                        buttonText: "Sign In",
                        onPress: () {},
                        btnColor: theme == "Dark" ? Colors.white : Colors.black,
                        textColor:
                            theme == "Dark" ? Colors.black : Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Form(
                key: formKeySignUp,
                child: Padding(
                  padding: EdgeInsets.all(EasyBuyTheme.paddingXL),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusColor: Colors.grey,
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(),
                          focusColor: Colors.grey,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(),
                          focusColor: Colors.grey,
                          hintText: "Confirm",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Sign Up from emails",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Switch(
                            onChanged: (e) {},
                            value: true,
                            activeColor: Colors.white,
                            activeTrackColor: EasyBuyTheme.colorTeal,
                            inactiveThumbColor: Colors.redAccent,
                            inactiveTrackColor: Colors.orange,
                          )
                        ],
                      ),
                      const SizedBox(height: 100),
                      CustomButton(
                        buttonText: "Sign In",
                        onPress: () {},
                        btnColor: theme == "Dark" ? Colors.white : Colors.black,
                        textColor:
                            theme == "Dark" ? Colors.black : Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
