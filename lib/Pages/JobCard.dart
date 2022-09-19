import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/Category.dart';
import 'package:future_jobs/Theme/categoriestheme.dart';
import 'package:future_jobs/Theme/dashboardsignintheme.dart';
import 'package:future_jobs/Theme/hometheme.dart';
import 'package:future_jobs/Pages/Home.dart';

class JobCard extends StatefulWidget {
  final String TittleCard;
  final String ImageCard;

  JobCard({
    required this.TittleCard,
    required this.ImageCard,
  });

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Category(
              ImageUrl: widget.ImageCard,
              TextCategory: widget.TittleCard,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 18, right: 18),
            child: Text(
              widget.TittleCard,
              style: CardCategories,
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.ImageCard),
          ),
        ),
      ),
    );
  }
}
