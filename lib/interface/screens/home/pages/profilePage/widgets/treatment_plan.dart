import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class TreatmentPlan extends StatelessWidget {
  const TreatmentPlan({Key? key}) : super(key: key);

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
                "Treatment Plan:",
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
                      "Continued medication adherence and regular follow-up appointments with the psychiatrist.",
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
                      "Ongoing participation in cognitive-vehavioral therapy to address maladaptive thought patterns and develop effective coping skills.",
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
                      "Collaborative work with the treatment team to monitor symptom progression and treatment response..",
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
                      "Regular assessment to track changes in symptoms and treatment efficiency.",
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
