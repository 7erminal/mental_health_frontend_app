import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class MoodSlabs extends StatefulWidget {
  final String cat;
  const MoodSlabs({
    Key? key,
    required this.cat
  }) : super(key: key);

  @override
  State<MoodSlabs> createState() => _MoodSlabsState();
}

class _MoodSlabsState extends State<MoodSlabs> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 250,
      width: width,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.cat,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
                ),
              ),
              Spacer(),
              Text(
                widget.cat,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  color: BrandColors.primaryColor
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 140,
            width: width,
            // color: Colors.amber,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MindAndMoodSlab(title: "Spiritual", cat: "Daily Calm", steps: "7", duration: "3-11 min", slabColor: BrandColors.secondaryColor,),
                SizedBox(width: 10,),
                MindAndMoodSlab(title: "Happiness", cat: "Daily Calm", steps: "7", duration: "3-11 min", slabColor: Color(0xffC58A72),),
                SizedBox(width: 10,),
                MindAndMoodSlab(title: "Anxiety", cat: "Daily Calm", steps: "7", duration: "3-11 min", slabColor: Color(0xff2D31AC)),
                SizedBox(width: 10,),
                MindAndMoodSlab(title: "Motivation", cat: "Daily Calm", steps: "7", duration: "3-11 min", slabColor: BrandColors.primaryColor),
              ],
            ),
          )
        ],
      ),
    );
  }
}
