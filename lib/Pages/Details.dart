import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/Home.dart';
import 'package:future_jobs/Theme/detailstheme.dart';
import 'package:future_jobs/Theme/hometheme.dart';
import 'package:future_jobs/Theme/dashboardsignintheme.dart';

class Details extends StatefulWidget {
  final String ImageTittle;
  final String JobsTittle;

  Details({
    required this.JobsTittle,
    required this.ImageTittle,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool IsApplied = false;

  @override
  Widget build(BuildContext context) {
    Widget Header(
      final String LocationDetail,
    ) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Image.asset(
                widget.ImageTittle,
                width: 60,
                height: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.JobsTittle,
                style: TittleDetail,
              ),
              Text(
                LocationDetail,
                style: Company,
              ),
            ],
          ),
        ),
      );
    }

    Widget About(
      final String AboutTittle,
      final String Value1,
      final String Value2,
    ) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 25,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AboutTittle,
              style: AboutJob,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/dot.png',
                  width: 12,
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  Value1,
                  style: ValueJob,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/dot.png',
                  width: 12,
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  Value2,
                  style: ValueJob,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget Qualifications(
      final String TittleQualification,
      final String Value1,
      final String Value2,
      final String Value3,
    ) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 25,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TittleQualification,
              style: AboutJob,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/dot.png',
                  width: 12,
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  Value1,
                  style: ValueJob,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/dot.png',
                  width: 12,
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  Value2,
                  style: ValueJob,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/dot.png',
                  width: 12,
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  Value3,
                  style: ValueJob,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget Respons(
      final String TittleRespon,
      final String Value1,
      final String Value2,
    ) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 25,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TittleRespon,
              style: AboutJob,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/dot.png',
                  width: 12,
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  Value1,
                  style: ValueJob,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/dot.png',
                  width: 12,
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  Value2,
                  style: ValueJob,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget ApplyJob() {
      return Container(
        width: 200,
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff4141A4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {
            setState(() {
              IsApplied = !IsApplied;
            });
          },
          child: Text(
            'Apply for Job',
            style: ButtonSignIn,
          ),
        ),
      );
    }

    Widget CancelApply() {
      return Container(
        width: 200,
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffFD4F56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {
            setState(() {
              IsApplied = !IsApplied;
            });
          },
          child: Text(
            'Cancel Apply',
            style: ButtonSignIn,
          ),
        ),
      );
    }

    Widget MassegeApply() {
      return Container(
        width: 312,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xffECEDF1),
          borderRadius: BorderRadius.circular(50),
        ),
        padding: EdgeInsets.only(top: 10),
        child: Text(
          'You have applied this job and the \nrecruiter will contact you',
          style: NotifDetail,
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget Footer(
      final String Massege,
    ) {
      return Column(
        children: [
          IsApplied ? CancelApply() : ApplyJob(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Text(
              Massege,
              style: FooterStyle,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              IsApplied ? MassegeApply() : SizedBox(),
              Header(
                'Google, Inc • Jakarta',
              ),
              About(
                'About the job',
                'Full-Time On Site',
                'Start at \$18,000 per month',
              ),
              Qualifications(
                'Qualifications',
                "Candidate must possess at least a \nBachelor's Degree",
                'Able to use Microsoft Office and Google \nbased service.',
                'Have an excellent time management, \ngood at organized and details',
              ),
              Respons(
                'Responsibilities',
                'Initiate and promote any programs, events, \ntraining, or activities',
                'Assessing and anticipating needs and \ncollaborate with Division.',
              ),
              SizedBox(
                height: 30,
              ),
              Footer(
                'Message Recruiter',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
