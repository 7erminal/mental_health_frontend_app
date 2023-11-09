import 'package:flutter/material.dart';
import 'package:medical_application/core/brand/brand_colors.dart';
import 'package:medical_application/index.dart';
import 'package:icon_forest/icon_forest.dart';
import 'package:icon_forest/flat_icons_medium.dart';
import 'package:icon_forest/flat_icons_arrows.dart';

class SpecialistTile extends StatelessWidget {
  final VoidCallback? onPressed;
  final String iconImageurl;
  final Color? textColor;
  final double? elevation_;
  final String? specialistName;
  final String? title;

  const SpecialistTile({
    Key? key,
    required this.onPressed,
    required this.iconImageurl,
    this.textColor,
    this.elevation_,
    this.specialistName,
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ,
      // height: 48,
      padding: EdgeInsets.symmetric(vertical: 14.0,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
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
      child: ListTile(
        onTap: onPressed,
        // width: 263,
        // height: 48,
        shape: RoundedRectangleBorder(
          // side: BorderSide(width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        leading: ProfileImage(photoString: iconImageurl ?? Assets.femaleDoctor, size: 60,),
        title: Column(
          children: [
            Row(
              children: [
                Text(
                    specialistName ?? "",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: textColor ?? BrandColors.primaryColor
                    )
                ),
              ],
            ),
            SizedBox(height: 1,),
            Row(
              children: [
                Text(
                    title ?? "Mental Health Therapist",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: textColor ?? BrandColors.primaryColor
                    )
                ),
              ],
            ),
            SizedBox(height: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star, color: Color(0xffFFB600),),
                SizedBox(width: 2,),
                Icon(Icons.star, color: Color(0xffFFB600),),
                SizedBox(width: 2,),
                Icon(Icons.star, color: Color(0xffFFB600),),
                SizedBox(width: 2,),
                Icon(Icons.star, color: Color(0xffFFB600),),
                SizedBox(width: 2,),
                Icon(Icons.star, color: Color(0xffFFB600),),
              ],
            )
          ],
        ),
        // trailing: Icon(FlatIconsArrows.con_right_arrow_1_a, weight: 100,),
        trailing: Icon(Icons.arrow_forward_ios_outlined , weight: 100,),
      ),
    );
  }
}