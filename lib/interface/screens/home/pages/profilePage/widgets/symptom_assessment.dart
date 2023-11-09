import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class SymptomAssessment extends StatelessWidget {
  const SymptomAssessment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bodyStyle = TextStyle(
        fontSize: 16,
        color: BrandColors.grey500,
        fontWeight: FontWeight.w400
    );

    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Symptom Assessment:",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
          SizedBox(height: 3,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.album_rounded,
                    size: 10,
                    color: BrandColors.grey500,
                  ),
                  SizedBox(width: 4,),
                  Flexible(
                    child: Text(
                      "Depressive Symptoms: Persistent feelings of sadness, hopelessness, loss of interest in previously enjoyed activities, significant changes in appetite and sleep patterns, fatigue, diminished ability to concentrate or make decisions, recurrent thoughts of death or suicide.",
                      style: bodyStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 3,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.album_rounded,
                    size: 10,
                    color: BrandColors.grey500,
                  ),
                  SizedBox(width: 4,),
                  Flexible(
                    child: Text(
                      "Anxiety Symptoms: Excessive worry, restlessness, irritability, muscle tension, difficulty controlling worry, sleep disturbances.",
                      style: bodyStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
