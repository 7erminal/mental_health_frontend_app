import 'package:flutter/material.dart';

import 'package:medical_application/index.dart';

showLoading(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => Center(
      child: Container(
        width: BrandSizes.size_80,
        height: BrandSizes.size_80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(BrandSizes.radius_4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(BrandSizes.padding_22),
          child: CircularProgressIndicator(
            strokeWidth: BrandSizes.radius_2,
            valueColor: AlwaysStoppedAnimation<Color>(BrandColors.primaryColor),
          ),
        ),
      ),
    ),
  );
}