import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/Category.dart';
import 'package:future_jobs/Pages/Dashboard.dart';
import 'package:future_jobs/Pages/Home.dart';
import 'package:future_jobs/Pages/Splash.dart';
import 'package:future_jobs/Pages/SignIn.dart';
import 'package:future_jobs/Pages/JobCard.dart';
import 'package:future_jobs/Pages/SignUp.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash(),
        '/dashboard': (context) => Dashboard(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/home': (context) => Home(),
      },
    );
  }
}
