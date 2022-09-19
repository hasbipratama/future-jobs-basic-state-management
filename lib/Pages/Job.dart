import 'package:flutter/material.dart';
import 'package:future_jobs/Pages/Details.dart';
import 'package:future_jobs/Theme/hometheme.dart';

class Jobs extends StatefulWidget {
  final String ImageJobs;
  final String JobsDetail;
  final String JobsCompany;

  Jobs({
    required this.ImageJobs,
    required this.JobsDetail,
    required this.JobsCompany,
  });

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              ImageTittle: widget.ImageJobs,
              JobsTittle: widget.JobsDetail,
            ),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.ImageJobs,
            width: 45,
            height: 45,
          ),
          SizedBox(
            width: 27,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.JobsDetail,
                  style: Job,
                ),
                Text(
                  widget.JobsCompany,
                  style: Company,
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  color: Color(0xffECEDF1),
                  thickness: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
