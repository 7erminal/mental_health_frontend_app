import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class BrandLogoText extends StatelessWidget {
  const BrandLogoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Heal',
        style: const TextStyle(
            fontSize: 52,
            color: BrandColors.primaryColor,
            fontWeight: FontWeight.w500
        ),
        children: const <TextSpan>[
          TextSpan(text: 'ME',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 52,
                color: BrandColors.secondaryColor,
              )
          ),
        ],
      ),
    );
  }
}
