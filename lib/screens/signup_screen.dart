import 'package:flutter/material.dart';
import 'package:sukoon/components/resusable_text_field.dart';
import 'package:sukoon/components/reusable_button.dart';

import '../constants.dart';
import '../cutsom_icons_icons.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/background.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: kTopSpace),
                      child: Text(
                        "Create a new account",
                        style: kTitleFont,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ReusableTextField(
                      title: "Account Name",
                      prefixIcon: CutsomIcons.smile,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    ReusableTextField(
                      title: "Email",
                      prefixIcon: CutsomIcons.email,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    ReusableTextField(
                      title: "Password",
                      prefixIcon: CutsomIcons.lock,
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    ReusableTextField(
                      title: "Confirm Password",
                      prefixIcon: CutsomIcons.lock,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "By creating an account you agree to our",
                      style: kSuperSmallFont,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "terms & conditions ",
                          style: kSuperSmallFont.copyWith(
                              color: Colors.blue.withOpacity(0.6)),
                        ),
                        Text(
                          "and ",
                          style: kSuperSmallFont.copyWith(
                              color: Colors.black.withOpacity(0.6)),
                        ),
                        Text(
                          "privacy policy.",
                          style: kSuperSmallFont.copyWith(
                              color: Colors.blue.withOpacity(0.6)),
                        ),
                      ],
                    ),
                    Spacer(),
                    ReusableButton(
                      outlineColor: 'purple',
                      text: "Create account",
                      icon: CutsomIcons.next,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an account? ",
                          style: kSuperSmallFont,
                        ),
                        Text(
                          "Log in",
                          style: kSuperSmallFont.copyWith(color: Colors.blue),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
