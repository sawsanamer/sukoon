import 'package:flutter/material.dart';
import 'package:sukoon/components/resusable_text_field.dart';
import 'package:sukoon/components/reusable_button.dart';

import '../constants.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
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
                    SizedBox(
                      height: kTopSpace,
                    ),
                    Container(
                      child: Image.asset(
                        "images/logo.png",
                      ),
                      height: 200,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Be here now. Be someplace else later. Is that",
                      style: kSuperSmallFont.copyWith(
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    Text(
                      "so complicated?",
                      style: kSuperSmallFont.copyWith(
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    ReusableButton(
                      text: "Continue with Facebook",
                      outlineColor: 'blue',
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ReusableButton(
                      text: "Continue with Email",
                      outlineColor: 'grey',
                    ),
                    Spacer(),
                    ReusableButton(
                      text: "Create new account",
                    ),
                    SizedBox(
                      height: 74,
                    ),
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
