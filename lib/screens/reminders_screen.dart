import 'package:flutter/material.dart';
import 'package:sukoon/components/day_card.dart';
import 'package:sukoon/components/goal_card.dart';
import 'package:sukoon/components/resusable_text_field.dart';
import 'package:sukoon/components/reusable_button.dart';

import '../constants.dart';

class RemindersScreen extends StatefulWidget {
  @override
  _RemindersScreenState createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: kTopSpace,
                    ),
                    Text(
                      "What time would you",
                      style: kTitleFont,
                    ),
                    Text(
                      "like to meditate?",
                      style: kTitleFont,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "We recomend to meditate first thing",
                      style: kSmallFont.copyWith(
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    Text(
                      "in the morning.",
                      style: kSmallFont.copyWith(
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("09:30 AM", style: kTimeFont),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      "Which days would you",
                      style: kTitleFont,
                    ),
                    Text(
                      "like to meditate?",
                      style: kTitleFont,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "We recomend to meditate everyday",
                      style: kSmallFont.copyWith(
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DayCard(
                          text: "SU",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        DayCard(
                          text: "M",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        DayCard(
                          text: "T",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        DayCard(
                          text: "W",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DayCard(
                          text: "TH",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        DayCard(
                          text: "F",
                          purpleOutline: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        DayCard(
                          text: "S",
                          purpleOutline: true,
                        ),
                      ],
                    ),
                    Spacer(),
                    ReusableButton(
                      text: "Save Reminder",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "No Thanks",
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
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
