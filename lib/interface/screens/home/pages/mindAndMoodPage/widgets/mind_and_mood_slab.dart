import 'package:flutter/material.dart';

class MindAndMoodSlab extends StatelessWidget {
  final String? title;
  final String? cat;
  final String? steps;
  final String? duration;
  final Color? slabColor;

  const MindAndMoodSlab({
    Key? key,
    this.title,
    this.cat,
    this.steps,
    this.duration,
    this.slabColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: slabColor
      ),
      padding: EdgeInsets.all(24),
      height: 100,
      width: 240,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Text(
                cat!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Text(
                "${steps} steps",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(width: 8,),
              Text("|", style: TextStyle(color: Colors.white),),
              SizedBox(width: 8,),
              Text(
                "${duration}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w300
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
