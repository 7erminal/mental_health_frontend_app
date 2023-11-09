import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class CustomPill extends StatelessWidget {
  final String? color;
  final String? title;
  final double? curve;
  final double? fontSize_;
  final Color? textColor;
  final Icon? icon_;

  const CustomPill({
    Key? key,
    this.color,
    this.title,
    this.curve,
    this.fontSize_,
    this.textColor,
    this.icon_
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(curve ?? 50),
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
      child: icon_ != null ? Row(
        children: [
          icon_!,
          SizedBox(height: 8,),
          Text(
            title ?? "7:00am - 9:00am",
            style: TextStyle(
                fontSize: fontSize_ ?? 14,
                fontWeight: FontWeight.w300,
                color: textColor ?? BrandColors.primaryColor
            ),
          ),
        ],
      ) : Row(
        children: [
          Text(
            title ?? "7:00am - 9:00am",
            style: TextStyle(
                fontSize: fontSize_ ?? 14,
                fontWeight: FontWeight.w300,
                color: textColor ?? BrandColors.primaryColor
            ),
          ),
        ],
      ),
    );
  }
}
