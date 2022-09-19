import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/Dashboard.dart';
import 'package:future_jobs/Pages/Home.dart';
import 'package:future_jobs/Pages/SignUp.dart';
import 'package:future_jobs/Theme/dashboardsignintheme.dart';
import 'package:future_jobs/Theme/signuptheme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool IsEmailVaild = false;

  TextEditingController emailcontroller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget Header(
      String Tittle,
      String SubTittle,
    ) {
      return Padding(
        padding: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Tittle,
              style: TittleDashboard,
            ),
            Text(
              SubTittle,
              style: TittleBuild,
            ),
          ],
        ),
      );
    }

    Widget Picture(
      String ImageValue,
    ) {
      return Column(
        children: [
          Center(
            child: Image.asset(
              ImageValue,
              width: 260,
              height: 240,
            ),
          ),
        ],
      );
    }

    Widget Main(
      String LabelEmail,
      String LabelPassword,
    ) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LabelEmail,
            style: TittleDashboard,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: emailcontroller,
            onChanged: (value) {
              print(value);
              bool IsValid = EmailValidator.validate(value);
              print(IsValid);

              if (IsValid) {
                setState(() {
                  IsEmailVaild = true;
                });
              } else {
                setState(() {
                  IsEmailVaild = false;
                });
              }
              ;
            },
            decoration: InputDecoration(
              fillColor: Color(0xffF1F0F5),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(
                  color: IsEmailVaild ? Color(0xff4141A4) : Color(0xffFD4F56),
                ),
              ),
            ),
            style: TextStyle(
              color: IsEmailVaild ? Color(0xff4141A4) : Color(0xffFD4F56),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            LabelPassword,
            style: TittleDashboard,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              fillColor: Color(0xffF1F0F5),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(
                  color: Color(0xff4141A4),
                ),
              ),
            ),
          )
        ],
      );
    }

    Widget Footer(
      String ButtonSign,
      String FooterValue,
    ) {
      return Column(
        children: [
          Container(
            width: 312,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xff4141A4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Text(
                ButtonSign,
                style: ButtonSignIn,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUp(),
                ),
              );
            },
            child: Text(
              FooterValue,
              style: FooterStyle,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header('Sign In', 'Build Your Career'),
            SizedBox(
              height: 40,
            ),
            Picture('assets/work.png'),
            SizedBox(
              height: 40,
            ),
            Main('Email Address', 'Password'),
            SizedBox(
              height: 40,
            ),
            Footer('Sign In', 'Create New Account'),
          ],
        ),
      ),
    );
  }
}
