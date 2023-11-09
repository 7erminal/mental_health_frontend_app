import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class TreatmentHistory extends StatelessWidget {
  const TreatmentHistory({Key? key}) : super(key: key);

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
                "Treatment History:",
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
                      "Therapy Sessions: Engaging in weekly cognitive-behavorial therapy (CBT) sessions",
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
                      "Medication Management: Not currently prescribed any medications",
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
                      "Support Group Participation: None",
                      style: bodyStyle,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
