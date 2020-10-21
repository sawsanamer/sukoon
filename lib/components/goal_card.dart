import 'package:flutter/material.dart';

import '../constants.dart';

class GoalCard extends StatelessWidget {
  final String text;
  final String image;
  GoalCard({this.text, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 40),
      padding: EdgeInsets.only(top: 70, bottom: 8, left: 16),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fitWidth,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            text,
            style: kCardFont,
          ),
        ],
      ),
    );
  }
}
