import 'package:flutter/material.dart';

import '../constants.dart';

class DayCard extends StatelessWidget {
  //the default is the filled purple card
  //purpleOutline=true //purple outlined card
  bool purpleOutline;
  String text;
  DayCard({this.purpleOutline, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: purpleOutline == true ? Colors.white : kPurpleCustom,
          boxShadow: purpleOutline == true
              ? null
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
          border: purpleOutline == true
              ? Border.all(width: 2, color: kPurpleCustom)
              : null),
      child: Center(
        child: Text(
          text,
          style: purpleOutline == true
              ? kDaysFont.copyWith(color: kPurpleCustom)
              : kDaysFont,
        ),
      ),
    );
  }
}
