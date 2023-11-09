import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class SelectButton extends StatefulWidget {
  final String narration;
  final Color? textColor;
  final VoidCallback? buttonTap;
  final Color? buttonColor;

  const SelectButton({
    Key? key,
    required this.narration,
    this.textColor,
    this.buttonTap,
    this.buttonColor
  }) : super(key: key);

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.buttonTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
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
            color: widget.buttonColor ?? BrandColors.white
        ),
        child: Row(
          children: [
            Text(
              "${widget.narration}",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: widget.textColor ?? BrandColors.primaryColor
              ),
            ),
          ],
        ),
      ),
    );
  }
}
