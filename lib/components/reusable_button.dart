import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableButton extends StatelessWidget {
  //the default is the purple filled card
  //outlineColor=purple //outlined purple card
  //outlineColor=grey //outlined grey card
  //outlineColor=blue //outlined blue card
//the default is that there is no icon
  String outlineColor;
  String text;
  IconData icon;
  ReusableButton({this.outlineColor, this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: outlineColor == null ? kPurpleCustom : null,
          borderRadius: BorderRadius.circular(16),
          border: outlineColor == "purple"
              ? Border.all(width: 2, color: kPurpleCustom)
              : outlineColor == "blue"
                  ? Border.all(width: 2, color: kBlueCustom)
                  : outlineColor == "grey"
                      ? Border.all(width: 2, color: kGreyCustom)
                      : null),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: outlineColor == "purple"
                  ? kSmallFontBold
                  : outlineColor == "blue"
                      ? kSmallFontBold.copyWith(color: kBlueCustom)
                      : outlineColor == "grey"
                          ? kSmallFontBold.copyWith(color: kGreyCustom)
                          : kSmallFontBold.copyWith(color: Colors.white),
            ),
            icon != null
                ? SizedBox(
                    width: 20,
                  )
                : SizedBox(
                    width: 0,
                  ),
            Icon(
              icon,
              color: kPurpleCustom,
            )
          ],
        ),
      ),
    );
  }
}
