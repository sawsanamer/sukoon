import 'package:flutter/material.dart';
import 'package:sukoon/components/resusable_text_field.dart';
import 'package:sukoon/components/reusable_button.dart';
import '../constants.dart';
import '../cutsom_icons_icons.dart';

class CompleteProfile extends StatefulWidget {
  @override
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Nature does not hurry,",
                            style: kTitleFont,
                          ),
                          Text(
                            "yet everything is",
                            style: kTitleFont,
                          ),
                          Text(
                            "accomplished",
                            style: kTitleFont,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ReusableTextField(
                      title: "Meditiation Level",
                      prefixIcon: CutsomIcons.lock,
                      suffixIcon: CutsomIcons.dropdown,
                    ),
                    ReusableTextField(
                      title: "Gender",
                      prefixIcon: CutsomIcons.star,
                      suffixIcon: CutsomIcons.dropdown,
                    ),
                    ReusableTextField(
                      title: "Date of Birth",
                      prefixIcon: CutsomIcons.calendar,
                      keyboardType: TextInputType.datetime,
                    ),
                    ReusableTextField(
                      title: "Location",
                      prefixIcon: CutsomIcons.star,
                    ),
                    Spacer(),
                    ReusableButton(
                      outlineColor: 'purple',
                      text: "Continue",
                      icon: CutsomIcons.next,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Skip",
                          style: kSuperSmallFont.copyWith(
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.black.withOpacity(0.5),
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
