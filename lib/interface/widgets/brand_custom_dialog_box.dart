import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class CustomDialogBox extends StatelessWidget {
  final String? title;
  final String? bodyText;
  final String? subBodyText;
  final String? buttonText;
  final String? linkText;
  final Color? bodyTextColor;
  final double? bodyTextFontSize;
  final double? subBodyTextFontSize;
  final Color? subBodyTextColor;
  final Color? linkTextColor;
  final double? dialogHeight;
  final double? dialogCurve;
  final TextAlign? bodyTextAlign;
  final VoidCallback? linkTap;
  final VoidCallback? buttonTap;
  final bool? wide;
  final double? topPadding;
  final double? bodyTextHeight;
  final Color? buttonColor;

  const CustomDialogBox({
    Key? key,
    this.title,
    this.bodyText,
    this.subBodyText,
    this.buttonText,
    this.linkText,
    this.bodyTextColor,
    this.linkTextColor,
    this.dialogHeight,
    this.dialogCurve,
    this.bodyTextAlign,
    this.linkTap,
    this.buttonTap,
    this.wide,
    this.subBodyTextColor,
    this.bodyTextFontSize,
    this.subBodyTextFontSize,
    this.topPadding,
    this.bodyTextHeight,
    this.buttonColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var bodyColor = bodyTextColor ?? BrandColors.grey550;
    var subBodyColor = subBodyTextColor ?? BrandColors.black;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      backgroundColor: BrandColors.white,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dialogCurve ?? 28.0),
      ),
      child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          topPadding == 0 ? Spacer() : Container(),
          title != null && title != '' ?
              Container(
                  padding: EdgeInsets.only(top: 40, left: 70, right: 70, bottom: 5),
                child: Text(
                  title!,
                  style: TextStyle(
                    color: BrandColors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 22.0,
                  ),
                ),
              ) :
              Container(padding: EdgeInsets.only(top: topPadding ?? 80, left: 70, right: 70, bottom: 0)),
          Container(
            padding: wide == true ? EdgeInsets.only(top: 20, left: 35, right: 35, bottom: 5) : EdgeInsets.only(top: 0, left: 50, right: 50, bottom: 5),
            child: Text(
              bodyText ?? "Thank you for joining HealMe! We're excited to have you on board. To make the most of your experience, please take a moment to complete your profile setup.",
              style: TextStyle(
                fontSize: bodyTextFontSize != null && bodyTextFontSize != "" ? bodyTextFontSize : 17,
                color: bodyColor,
                height: bodyTextHeight ?? 1.8
              ),
              textAlign: bodyTextAlign ?? TextAlign.center,
            ),
          ),
          // SizedBox(height: 8,),
          subBodyText != null && subBodyText != '' ? Container(
            padding: wide == true ? EdgeInsets.only(top: 0, left: 35, right: 35, bottom: 5) : EdgeInsets.only(top: 20, left: 70, right: 70, bottom: 5),
            child: Text(
              subBodyText!,
              style: TextStyle(
                  fontSize: subBodyTextFontSize != null && subBodyTextFontSize != "" ? subBodyTextFontSize : 17,
                  color: subBodyColor,
                  height: bodyTextHeight ?? 1.8
              ),
              textAlign: bodyTextAlign ?? TextAlign.center,
            ),
          ) : Container(),
          SizedBox(height: 20,),
          buttonText != null && buttonText != '' ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            child: CustomButton(
              width: width * 0.7,
              elevation: 2.0,
              buttonColor: buttonColor ?? BrandColors.secondaryColor,
              height: 40,
              onPressed: buttonTap,
              // buttonColor: BrandColors.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      buttonText!,
                      style: TextStyle(
                        color: BrandColors.colorWhiteAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 22.0,
                      )
                  ),
                ],
              ),
            ),
          ) : Container(),
          SizedBox(height: 25,),
          linkText != null && linkText != '' ?
          InkWell(
            onTap: linkTap,
            child: Text(
              linkText!,
              style: TextStyle(
                fontSize: 17,
                color: BrandColors.primaryColor
              ),
            ),
          ) : Container(),
          topPadding == 0 ? Spacer() : Container(),
          Container(padding: EdgeInsets.only(top: topPadding ?? 80, left: 70, right: 70, bottom: 0)),
        ],
      ),
    );
  }
}
