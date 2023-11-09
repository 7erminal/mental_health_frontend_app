import 'package:flutter/material.dart';
import 'package:medical_application/core/brand/brand_colors.dart';
import 'package:medical_application/index.dart';
import 'package:icon_forest/icon_forest.dart';
import 'package:icon_forest/flat_icons_medium.dart';

class CustomTile extends StatelessWidget {
  final VoidCallback? onPressed;
  final String iconImageurl;
  final Color? textColor;
  final double? elevation_;
  final String? title;

  const CustomTile({
    Key? key,
    required this.onPressed,
    required this.iconImageurl,
    this.textColor,
    this.elevation_,
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation_ ?? 5,
      borderRadius: BorderRadius.circular(40),
      child: InkWell(
          onTap: onPressed,
        child: Container(
            // width: ,
            height: 80,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
            ),
          // child: ListTile(
          //   onTap: onPressed,
          //   // width: 263,
          //   // height: 48,
          //   shape: RoundedRectangleBorder( //<-- SEE HERE
          //     // side: BorderSide(width: 2),
          //     borderRadius: BorderRadius.circular(40),
          //   ),
          //   leading: Container(
          //     width: 45,
          //     height: 45,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       image: DecorationImage(
          //           image: AssetImage(iconImageurl),
          //           fit: BoxFit.cover
          //       )
          //     ),
          //     // child: Image.asset(
          //     //   iconImageurl,
          //     //   width: 40,
          //     //   height: 40,
          //     // ),
          //     // child: Icon(FlatIconsMedium.bookmark),
          //   ),
          //   title: Center(
          //     child: Text(
          //         title ?? "Diagnosis",
          //         style: TextStyle(
          //           fontSize: 28,
          //           fontWeight: FontWeight.w500,
          //           color: textColor ?? BrandColors.primaryColor
          //         )
          //     ),
          //   ),
          // ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 24,),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(iconImageurl),
                                    fit: BoxFit.cover
                                )
                            ),
                            // child: Image.asset(
                            //   iconImageurl,
                            //   width: 40,
                            //   height: 40,
                            // ),
                            // child: Icon(FlatIconsMedium.bookmark),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // height: height ?? BrandSizes.roundedButtonDefaultHeight,
                      // width: width ?? BrandSizes.roundedButtonDefaultWidth,
                      // constraints: BoxConstraints(
                      //   minHeight: minHeight ?? BrandSizes.roundedButtonMinHeight,
                      // ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              title ?? "Diagnosis",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                  color: textColor ?? BrandColors.primaryColor
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}