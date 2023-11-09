import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class AssessmentSlab extends StatelessWidget {
  final Color? slabColor;
  final String title;
  final int? sectionCount;
  final String? duration;
  final VoidCallback? onSlapTap;

  const AssessmentSlab({
    Key? key,
    this.slabColor,
    required this.title,
    this.sectionCount,
    this.duration,
    this.onSlapTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSlapTap,
      child: Container(
          // width: 272,
          height: 144,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: slabColor ?? BrandColors.slabColorLightGreen,
            boxShadow: [
              BoxShadow(
                color: BrandColors.grey100,
                blurRadius: 8.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: Offset(
                  5.0, // Move to right 5  horizontally
                  5.0, // Move to bottom 5 Vertically
                ),
              )
            ],
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 8,),
              Row(
                children: <Widget>[
                  Spacer(),
                  Text(
                    "${sectionCount ?? '6'} sections"
                  ),
                  Spacer(),
                  Text("Estimated duration: ${duration ?? '10'} mins"),
                  Spacer()
                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: <Widget>[
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: BrandColors.primaryColor,
                  ),
                  SizedBox(width: 20,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
