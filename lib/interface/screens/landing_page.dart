import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class LandingPage extends StatelessWidget {
  static const String id = Urls.landingPage;

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            // alignment: Alignment,
            image: AssetImage(
              Assets.loginLandingImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      child: Column(
        children: [
          Spacer(),
          Center(
            child: BrandLogoText(),
          ),
          Spacer(),
          CustomButton(
            width: width * 0.9,
            elevation: 2.0,
            onPressed: () {
              Navigator.pushNamed(context, LoginAndSignup.id);
            },
            // buttonColor: BrandColors.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    "Get Started",
                    style: TextStyle(
                      color: BrandColors.colorWhiteAccent,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
