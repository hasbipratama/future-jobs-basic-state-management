import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/SignIn.dart';
import 'package:future_jobs/Pages/SignUp.dart';
import 'package:future_jobs/Theme/dashboardsignintheme.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget Header(
    String TittleValue,
    String SubTittleValue,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TittleValue,
            style: Tittle,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            SubTittleValue,
            style: SubTittle,
          ),
        ],
      ),
    );
  }

  Widget Footer(
    String ButtonStarted,
    String ButtonSign,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 660,
        ),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  ButtonStarted,
                  style: ButtonGetStarted,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 200,
              height: 45,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ),
                  );
                },
                child: Text(
                  'Sign In',
                  style: ButtonSignIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bgsignin.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Header(
            'Build Your Next \nFuture Career Like \na Master',
            '18,000 jobs available',
          ),
          Footer(
            'Get Started',
            'Sign In',
          ),
        ],
      ),
    );
  }
}
