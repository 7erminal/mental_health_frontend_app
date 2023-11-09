import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class DiagnosisInformation extends StatelessWidget {
  const DiagnosisInformation({Key? key}) : super(key: key);

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
                "Diagnosis:",
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
                      "Primary Diagnosis: Major Depressive Disorder (Severe)",
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
                      "Co-occuring Diagnosis: Generalized Anxiety Disorder",
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
