import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class OptionButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? minHeight;
  final Widget? child;
  final String? text;
  final VoidCallback? onPressed;
  final OutlinedBorder? shape;
  final double? elevation;
  final Color? buttonColor;
  final Color? splashColor;
  final Color? shadowColor;
  final BorderRadiusGeometry? gradientBorderRadius;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onLongPress;
  final Icon? emoji;

  const OptionButton({
    Key? key,
    this.height,
    this.width,
    this.minHeight,
    this.child,
    this.text,
    required this.onPressed,
    this.shape,
    this.elevation,
    this.buttonColor,
    this.splashColor,
    this.shadowColor,
    this.gradientBorderRadius,
    this.padding,
    this.onLongPress,
    this.emoji
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          BrandSizes.roundedButtonDefaultRadius,
        ),
        boxShadow: [
          BoxShadow(
            color: BrandColors.grey100,
            blurRadius: 8.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              3.0, // Move to right 5  horizontally
              2.0, // Move to bottom 5 Vertically
            ),
          )
        ]
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  BrandSizes.roundedButtonDefaultRadius,
                ),
              ),
          elevation: elevation ?? 0,
          backgroundColor: buttonColor ?? BrandColors.secondaryColor,
          foregroundColor: splashColor,
          shadowColor: shadowColor,
          padding: padding ?? EdgeInsets.zero, //Not necessary if you added height and width.
        ),
        onPressed: onPressed,
        onLongPress: onLongPress,
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
                      emoji == null ? Container() : emoji!
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
                  height: height ?? BrandSizes.roundedButtonDefaultHeight,
                  width: width ?? BrandSizes.roundedButtonDefaultWidth,
                  constraints: BoxConstraints(
                    minHeight: minHeight ?? BrandSizes.roundedButtonMinHeight,
                  ),
                  decoration: buttonColor == null
                      ? BoxDecoration(
                    borderRadius: gradientBorderRadius ?? BorderRadius.circular(BrandSizes.roundedButtonDefaultRadius),
                  )
                      : null,
                  child: child ??
                      Text(
                          text!,
                          style: TextStyle(
                            color: buttonColor == null ? BrandColors.colorBackground : BrandColors.black,
                            fontWeight: FontWeight.w500,
                            // textAlign: TextAlign.center,
                          )
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
