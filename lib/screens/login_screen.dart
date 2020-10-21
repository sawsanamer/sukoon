import 'package:flutter/material.dart';
import 'package:sukoon/components/resusable_text_field.dart';
import 'package:sukoon/components/reusable_button.dart';

import '../constants.dart';
import '../cutsom_icons_icons.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        "Log in",
                        style: kTitleFont,
                      ),
                    ),
                    SizedBox(
                      height: 40,
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
                    Spacer(),
                    ReusableButton(
                      text: "Log in",
                      outlineColor: 'purple',
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account? ",
                          style: kSuperSmallFont,
                        ),
                        Text(
                          "Sign Up",
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
