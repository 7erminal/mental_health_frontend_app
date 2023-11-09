import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:medical_application/index.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

Future<dynamic> showCustomFlushBar({
  required context,
  String? messageText,
  String? title,
  String? message,
  Color? backgroundColor,
  Color? titleColor,
  Color? iconColor,
  Color? messageColor,
  double? iconSize,
  double? messageSize,
  double? titleSize,
  IconData? icon,
  Widget? titleText,
  Duration? duration,
  bool shouldIconPulse = true,
  bool showProgressIndicator = true,
  double borderWidth = 1.0,
  Color? borderColor,
  FlushbarPosition? flushBarPosition,
  BorderRadius? borderRadius,
  EdgeInsets padding =  const EdgeInsets.all(BrandSizes.padding_18),
  EdgeInsets margin = const EdgeInsets.all(BrandSizes.padding_0),
}) {
  return Flushbar(
    title: title,
    flushbarPosition: flushBarPosition ?? FlushbarPosition.BOTTOM,
    message: message,
    messageText: Text(
      textAlign: TextAlign.start,
      maxLines: 3,
      messageText ?? "Something Went wrong.",
      style: TextStyle(color: messageColor ?? BrandColors.colorWhiteAccent,)
    ),
    titleSize: titleSize ?? BrandSizes.textSize_18,
    titleColor: titleColor ?? BrandColors.colorWhiteAccent,
    backgroundColor: backgroundColor ?? BrandColors.colorPrimary,
    messageColor: messageColor ?? BrandColors.kGrayWhite,
    shouldIconPulse: shouldIconPulse,
    borderWidth: borderWidth,
    borderColor: borderColor,
    borderRadius: borderRadius,
    margin: margin,
    padding: padding,
    showProgressIndicator: showProgressIndicator,
    icon: Icon(
      icon ?? LineAwesomeIcons.info_circle,
      color: iconColor ?? BrandColors.colorWhiteAccent,
      size: iconSize ?? 32.0,
    ),
    duration: duration ?? const Duration(seconds: 5),
  ).show(context);
}