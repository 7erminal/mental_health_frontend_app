import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class ProfileImage extends StatelessWidget {
  final double? size;
  final String? photoString;

  const ProfileImage({Key? key, this.size, this.photoString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 60,
        height: size ?? 60,
      // color: Colors.grey,
      // margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(BrandSizes.radius_50),
            // color: BrandColors.primaryColor,
            border: Border.all(
                color: BrandColors.white,
                width: 3
            ),
          shape: BoxShape.circle,
          color: Colors.amber,
          image: DecorationImage(
            image: AssetImage(photoString ?? Assets.profilePhotoDummy),
            fit: BoxFit.cover
          )
        ),
    );
  }
}
