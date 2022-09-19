import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/Job.dart';
import 'package:future_jobs/Theme/hometheme.dart';
import 'package:future_jobs/Theme/dashboardsignintheme.dart';
import 'package:future_jobs/Pages/JobCard.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget Header(
      String TittleValue,
      String SubTittleValue,
      String ImageHeaderValue,
    ) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TittleValue,
                      style: TittleDashboard,
                    ),
                    Text(
                      SubTittleValue,
                      style: TittleBuild,
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  ImageHeaderValue,
                  width: 58,
                  height: 58,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget Main(
      final String TittleCategori,
      final String Posted,
    ) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TittleCategori,
              style: TittleCategories,
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  JobCard(
                    TittleCard: 'Web Developer',
                    ImageCard: 'assets/card1.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  JobCard(
                    TittleCard: 'Mobile Developer',
                    ImageCard: 'assets/card2.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  JobCard(
                    TittleCard: 'App Designer',
                    ImageCard: 'assets/card3.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  JobCard(
                    TittleCard: 'Content Writer',
                    ImageCard: 'assets/card4.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  JobCard(
                    TittleCard: 'Video Grapher',
                    ImageCard: 'assets/card5.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              Posted,
              style: TittleCategories,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  Jobs(
                    ImageJobs: 'assets/google.png',
                    JobsDetail: 'Front-End Developer',
                    JobsCompany: 'Google',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Jobs(
                    ImageJobs: 'assets/instagram.png',
                    JobsDetail: 'UI Designer',
                    JobsCompany: 'Instagram',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Jobs(
                    ImageJobs: 'assets/facebook.png',
                    JobsDetail: 'Data Scientist',
                    JobsCompany: 'Facebook',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Jobs(
                    ImageJobs: 'assets/instagram.png',
                    JobsDetail: 'UI/UX Designer',
                    JobsCompany: 'Instagram',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Jobs(
                    ImageJobs: 'assets/facebook.png',
                    JobsDetail: 'Learning Machine',
                    JobsCompany: 'Facebook',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              'Howdy',
              'Jason Powell',
              'assets/userpic.png',
            ),
            Main(
              'Hot Categories',
              'Just Posted',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            showSelectedLabels: false,
            unselectedItemColor: Color(0xffB3B5C4),
            selectedItemColor: Color(0xff272C2F),
            currentIndex: 0,
            iconSize: 24,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/iconbottomnavbar.png',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/iconbottomnavbar2.png',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/iconbottomnavbar3.png'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/iconbottomnavbar4.png'),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
