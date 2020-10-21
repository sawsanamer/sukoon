import 'package:flutter/material.dart';
import 'package:sukoon/components/goal_card.dart';
import 'package:sukoon/components/resusable_text_field.dart';
import 'package:sukoon/components/reusable_button.dart';

import '../constants.dart';

class SelectGoalScreen extends StatefulWidget {
  @override
  _SelectGoalScreenState createState() => _SelectGoalScreenState();
}

class _SelectGoalScreenState extends State<SelectGoalScreen> {
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
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: kTopSpace,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "What brings you to",
                          style: kTitleFont,
                        ),
                        Text(
                          "Sukoon?",
                          style: kTitleFont,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Choose a goal to focus on:",
                            style: kSmallFont.copyWith(
                                color: Colors.black.withOpacity(0.6))),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GoalCard(
                      image: "images/card1.png",
                      text: "Improve Performance",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GoalCard(
                      image: "images/card2.png",
                      text: "Reduce Stress",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GoalCard(
                      image: "images/card3.png",
                      text: "Personal Growth",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GoalCard(
                      image: "images/card4.png",
                      text: "Better Sleep",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GoalCard(
                      image: "images/card1.png",
                      text: "Improve Performance",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
