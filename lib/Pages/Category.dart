import 'package:flutter/material.dart';
import 'package:future_jobs/Theme/categoriestheme.dart';
import 'package:future_jobs/Theme/hometheme.dart';
import 'package:future_jobs/Pages/Job.dart';
import 'package:future_jobs/Pages/JobCard.dart';

class Category extends StatefulWidget {
  final String TextCategory;
  final String ImageUrl;

  Category({
    required this.TextCategory,
    required this.ImageUrl,
  });

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    Widget Header(
      final String ValueJob,
    ) {
      return Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Container(
                  width: double.infinity,
                  height: 270,
                  child: Image.asset(
                    widget.ImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 178,
                  left: 25,
                ),
                child: Text(
                  widget.TextCategory,
                  style: TittleCategory,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 215,
                  left: 25,
                ),
                child: Text(
                  ValueJob,
                  style: SubTittleCategory,
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget Main(
      final String TittleMain,
    ) {
      return Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              TittleMain,
              style: TittleCategories,
            ),
            SizedBox(height: 16),
            Column(
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
              ],
            ),
          ],
        ),
      );
    }

    Widget Main2(
      final String TittleMain2,
    ) {
      return Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              TittleMain2,
              style: TittleCategories,
            ),
            SizedBox(height: 16),
            Column(
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
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              '12,309 available',
            ),
            Main(
              'Big Companies',
            ),
            Main2(
              'New Startups',
            ),
          ],
        ),
      ),
    );
  }
}
