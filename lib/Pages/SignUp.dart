import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/Dashboard.dart';
import 'package:future_jobs/Pages/Home.dart';
import 'package:future_jobs/Pages/SignIn.dart';
import 'package:future_jobs/Theme/signuptheme.dart';
import 'package:future_jobs/Theme/dashboardsignintheme.dart';
import 'package:future_jobs/main.dart';
import 'package:email_validator/email_validator.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool IsUpload = false;
  bool IsEmailValid = false;

  TextEditingController emailcontroller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget UploadImage() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              IsUpload = !IsUpload;
            });
          },
          child: Column(
            children: [
              Image.asset(
                'assets/uploadimage.png',
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
    }

    Widget ShowImage() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              IsUpload = !IsUpload;
            });
          },
          child: Column(
            children: [
              Image.asset(
                'assets/userpic.png',
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
    }

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

    Widget Picture() {
      return Column(
        children: [
          IsUpload ? ShowImage() : UploadImage(),
        ],
      );
    }

    Widget Main(
      String LabelFullName,
      String LabelEmail,
      String LabelPassword,
      String LabelYourGoal,
    ) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LabelFullName,
            style: TittleDashboard,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
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
          ),
          SizedBox(
            height: 20,
          ),
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
                  IsEmailValid = true;
                });
              } else {
                setState(() {
                  IsEmailValid = false;
                });
              }
            },
            keyboardType: TextInputType.emailAddress,
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
                  color: IsEmailValid ? Color(0xff4141A4) : Color(0xffFD4F56),
                ),
              ),
              hintText: '',
            ),
            style: TextStyle(
              color: IsEmailValid ? Color(0xff4141A4) : Color(0xffFD4F56),
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
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            LabelYourGoal,
            style: TittleDashboard,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
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
          ),
          SizedBox(
            height: 20,
          ),
        ],
      );
    }

    Widget Footer(
      String ButtonSign,
      String FooterValue,
    ) {
      return Column(
        children: [
          Center(
            child: Container(
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
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                FooterValue,
                style: FooterStyle,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header('Sign Up', 'Begin New Journey'),
              SizedBox(
                height: 40,
              ),
              Picture(),
              SizedBox(
                height: 40,
              ),
              Main(
                'Full Name',
                'Email Address',
                'Password',
                'Your Goal',
              ),
              SizedBox(
                height: 40,
              ),
              Footer('Sign Up', 'Back To Sign In'),
            ],
          ),
        ),
      ),
    );
  }
}
