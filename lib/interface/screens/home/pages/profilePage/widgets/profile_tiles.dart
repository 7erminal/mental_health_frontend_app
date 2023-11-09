import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';


class ProfileTiles extends StatefulWidget {
  final String iconPath;
  final String title;
  final Widget content;

  const ProfileTiles({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.content
  }) : super(key: key);

  @override
  State<ProfileTiles> createState() => _ProfileTilesState();
}

class _ProfileTilesState extends State<ProfileTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: BrandColors.grey))),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(vertical: 15),
        leading: Container(
          width: 45,
          // height: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(widget.iconPath),
                  fit: BoxFit.cover
              )
          ),
          // child: Image.asset(
          //   iconImageurl,
          //   width: 40,
          //   height: 40,
          // ),
        ),
        title: ShaderMask(
          shaderCallback: (z) => LinearGradient(
            begin: Alignment.topLeft, end: Alignment.center,
            colors: BrandGradients.brandGradientSecondary,
          ).createShader(z),
          child: Text(
            widget.title,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.white
            ),
          ),
        ),
        // trailing: Icon(
        //   Icons.keyboard_arrow_down_sharp
        // ),
        children: [
          widget.content
        ],

      ),
    );
  }
}
