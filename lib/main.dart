import 'package:flutter/material.dart';
import 'package:sukoon/screens/complete_profile.dart';
import 'package:sukoon/screens/login_screen.dart';
import 'package:sukoon/screens/onboarding_screen.dart';
import 'package:sukoon/screens/reminders_screen.dart';
import 'package:sukoon/screens/select_goal_screen.dart';
import 'package:sukoon/screens/signup_screen.dart';
import 'package:sukoon/screens/welcome_screen.dart';

void main() => runApp(pomocheck());

class pomocheck extends StatefulWidget {
  @override
  _pomocheckState createState() => _pomocheckState();
}

class _pomocheckState extends State<pomocheck> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
