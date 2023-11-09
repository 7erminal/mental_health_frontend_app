import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class CustomButton extends StatelessWidget {
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
  final Gradient? gradientColor;
  final BorderRadiusGeometry? gradientBorderRadius;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onLongPress;

  const CustomButton({
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
    this.gradientColor,
    this.gradientBorderRadius,
    this.padding,
    this.onLongPress,
    Key? key,
  })  : assert(text != null || child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: Container(
        height: height ?? BrandSizes.roundedButtonDefaultHeight,
        width: width ?? BrandSizes.roundedButtonDefaultWidth,
        constraints: BoxConstraints(
          minHeight: minHeight ?? BrandSizes.roundedButtonMinHeight,
        ),
        decoration: buttonColor == null
            ? BoxDecoration(
          borderRadius: gradientBorderRadius ?? BorderRadius.circular(BrandSizes.roundedButtonDefaultRadius),
          gradient: gradientColor,
        )
            : null,
        child: child ??
            Text(
              text!,
              style: TextStyle(
              color: buttonColor == null ? BrandColors.colorBackground : BrandColors.colorWhiteAccent,
              fontWeight: FontWeight.w500,
              // textAlign: TextAlign.center,
              )
            ),
      ),
    );
  }
}
