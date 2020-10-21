import 'package:flutter/material.dart';
import 'package:sukoon/components/resusable_text_field.dart';
import 'package:sukoon/components/reusable_button.dart';

import '../constants.dart';
import '../cutsom_icons_icons.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/background2.png",
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
                    Text(
                      "Hi Cody, Welcome to",
                      style: kTitleFont,
                    ),
                    Text(
                      "Sukoon",
                      style: kTitleFont,
                    ),
                    SizedBox(
                      height: 40,
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
                      "Explore the app, find some peace of mind to",
                      style: kSuperSmallFont.copyWith(
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    Text(
                      "prepare for meditation.",
                      style: kSuperSmallFont.copyWith(
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    Spacer(),
                    ReusableButton(
                      text: "Get Started",
                      outlineColor: "purple",
                      icon: CutsomIcons.next,
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
