import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class AppointmentPill extends StatelessWidget {
  final String? color;

  const AppointmentPill({
    Key? key,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
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
        color: BrandColors.white
      ),
      child: Row(
        children: [
          Icon(
            Icons.timer_sharp,
            color: BrandColors.primaryColor,
          ),
          SizedBox(width: 8,),
          Text(
            "7:00am - 9:00am",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: BrandColors.primaryColor
            ),
          ),
        ],
      ),
    );
  }
}
