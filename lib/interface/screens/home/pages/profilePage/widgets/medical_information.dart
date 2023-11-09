import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class MedicalInformation extends StatelessWidget {
  const MedicalInformation({Key? key}) : super(key: key);

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
                "Medical Information:",
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
                      "Diagnosis: Generalized Anxiety Disorder",
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
                      "Medications: None",
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
                      "Allergies: None",
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
                      "Previous Diagnosis or Mental Health Conditions: None",
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
                      "Family History of Mental Health Conditions: No known history",
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
