import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/Dashboard.dart';
import 'package:future_jobs/Theme/splashtheme.dart';

class Splash extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ),
      ),
    );
  }

  Widget Main(
    String Logo,
    String Tittle,
  ) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Logo,
            width: 59,
            height: 76,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            Tittle,
            style: FutureJob,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Main('assets/step.png', 'FUTURE JOB'),
    );
  }
}
