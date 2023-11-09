import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuestionTracker extends StatefulWidget {
  const QuestionTracker({Key? key}) : super(key: key);

  @override
  State<QuestionTracker> createState() => _QuestionTrackerState();
}

class _QuestionTrackerState extends State<QuestionTracker> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 50,
      width: width,
      child: Row(
        children: [
          // Container(
          //   width: 16,
          //   height: 16,
          //   // padding: EdgeInsets.all(8),
          //   decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //     color: BrandColors.primaryColor
          //   ),
          //   child: Center(
          //     child: Text(
          //       '1',
          //       style: TextStyle(
          //         color: BrandColors.white,
          //         fontSize: 10,
          //         fontWeight: FontWeight.w800
          //       ),
          //       textAlign: TextAlign.center,
          //     ),
          //   ),
          // ),
          Spacer(),
          new CircularPercentIndicator(
            radius: 12.0,
            lineWidth: 2.0,
            percent: 0.10,
            center: new Text("1"),
            progressColor: Colors.red,
          ),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new CircularPercentIndicator(
            radius: 12.0,
            lineWidth: 4.0,
            percent: 0.30,
            center: new Text("2"),
            progressColor: Colors.orange,
          ),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new CircularPercentIndicator(
            radius: 12.0,
            lineWidth: 4.0,
            percent: 0.30,
            center: new Text("3"),
            progressColor: Colors.orange,
          ),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new CircularPercentIndicator(
            radius: 12.0,
            lineWidth: 4.0,
            percent: 0.30,
            center: new Text("4"),
            progressColor: Colors.orange,
          ),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new CircularPercentIndicator(
            radius: 12.0,
            lineWidth: 4.0,
            percent: 0.30,
            center: new Text("5"),
            progressColor: Colors.orange,
          ),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(5),
              shape: BoxShape.circle
            ),
            child: new CircularPercentIndicator(
              radius: 12.0,
              lineWidth: 4.0,
              percent: 0.30,
              center: new Text("6"),
              progressColor: Colors.orange,
              fillColor: BrandColors.primaryColor,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
