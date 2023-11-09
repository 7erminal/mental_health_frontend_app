import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class HealthScore extends StatefulWidget {
  const HealthScore({Key? key}) : super(key: key);

  @override
  State<HealthScore> createState() => _HealthScoreState();
}

class _HealthScoreState extends State<HealthScore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(BrandSizes.radius_50),
        // color: BrandColors.primaryColor,
          shape: BoxShape.circle,
        border: Border.all(
          color: BrandColors.primaryColor,
          width: 1
        )
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          Column(
            children: [
              Text(
                  "Overall",
                  style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.w600,
                  )
              ),
              Text(
                  "Health Score",
                  style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.w600,
                  )
              ),
            ],
          ),
          SizedBox(height: 4,),
          Row(
            children: [
              Text(
                  "92",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
              ),
              Text(
                  "%",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  )
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
